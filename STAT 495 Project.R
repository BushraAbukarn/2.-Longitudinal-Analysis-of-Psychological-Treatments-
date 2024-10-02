#Reading the CSV file
Diabetic <- read.csv(file = "C:/Users/bushr/OneDrive/Desktop/CBT_MBCT.csv", header = TRUE, sep = ",")

#1. Data transformation: categorization
Diabetic %>%
  mutate(
    Group = factor(Group, levels = c(1, 0), labels = c("CBT", "MBCT")),
    Gender = factor(Gender, levels = c(1, 0), labels = c("Female", "Male")),
    Education = factor(Education, levels = c(0, 1, 2), labels = c("Low Education", "Intermediate Education", "High Education")),
    Type_diabetes = factor(Type_diabetes, levels = c(2, 1), labels = c("Type II", "Type I")),
    Comorbidities = factor(Comorbidities, levels = c(1, 0), labels = c("Yes", "No"))
  )

#2. Create long-form data set
longform.Diabetic <- melt(Diabetic, c("ID", "Group", "Gender", "Age", "Education", "Type_diabetes", "Comorbidities", "Neuroticism"), 
                          id.vars = c("ID", "Group", "Gender", "Age", "Education", "Type_diabetes", "Comorbidities", "Neuroticism", "BDIpre", "BDIpost", "BDI9fu"))

#2.1 Rename and transform to numeric
longform.Diabetic <- longform.Diabetic %>%
  rename(Month = variable, BDIscore = value) %>%
  mutate(Month = recode(Month, "BDIpre" = 0, "BDIpost" = 3, "BDI9fu" = 12))

#3. Testing the normality of the value
#3.1 Histogram Plot
plotNormalHistogram(longform.Diabetic$BDIscore)

#3.2 Shapiro Test
shapiro.test(longform.Diabetic$BDIscore)

# 4. Specifying reference category
longform.Diabetic$Group.rel <- relevel(as.factor(longform.Diabetic$Group), ref = "MBCT")
longform.Diabetic$Gender.rel <- relevel(as.factor(longform.Diabetic$Gender), ref = "Female")
longform.Diabetic$Education.rel <- relevel(as.factor(longform.Diabetic$Education), ref = "High Education")
longform.Diabetic$Type_diabetes.rel <- relevel(as.factor(longform.Diabetic$Type_diabetes), ref = "Type II")
longform.Diabetic$Comorbidities.rel <- relevel(as.factor(longform.Diabetic$Comorbidities), ref = "No")

#5. Cleaning long-form data
longform.Diabetic <- longform.Diabetic[names(longform.Diabetic) %in% c("Group", "Gender", "Education", "Type_diabetes", "Comorbidities")]

#6. Fitting random slope and intercept model
summary(fitted.model <- lme(BDIscore ~ Group.rel + Gender.rel + Age + Education.rel + Type_diabetes.rel + 
                              Comorbidities.rel + Neuroticism + Month, 
                            random = ~ 1 + Month | ID, data = longform.Diabetic, control = lmeControl(opt = "optim")))


#7. Using the model to predict the BDI score of a 45-year-old female in the MBCT post-treatment period dealing with type II diabetes, high education, no comorbidities, and a neuroticism level of 35.
new.data <- rbind(longform.Diabetic, data.frame(ID = "NA", Group.rel = "MBCT", 
                                                Gender.rel = "Female", Age = 45, Education.rel = "High Education", 
                                                Type_diabetes.rel = "Type II", Comorbidities.rel = "No", 
                                                Neuroticism = 35, Month = 3, BDIscore = NA))

pred <- predict(fitted.model, new.data, level = 0)
pred[length(pred)]
