## Examine the Effectiveness of Psychological Treatments in Alleviating Depressive Symptoms for Diabetes.

### Intro
Diabetes: A chronic disease that affects the transformation of food into energy, breaking down most of the food in the body into sugar (glucose) and releasing it into the bloodstream. According to National Diabetes Statistics Report, 38.4 million people have diabetes (11.6% of the US population). ![image](https://github.com/user-attachments/assets/d9bfd5b8-7da8-4894-b002-da52ba54c731)
According to the Life Line Screening, the main difference between the two types of diabetes is:

Type I diabetes is a genetic disorder that often shows up early in life. 

Type II is largely diet-related and develops over time. 
![image](https://github.com/user-attachments/assets/98975894-e8d8-40f9-b076-0e6d2309c76d)

Psychological Treatments for Diabetes:Diabetes not only impacts the physical well-being of patients but also takes a toll on their mental health. A significant portion of individuals grappling with diabetes experience symptoms of depression.
![image](https://github.com/user-attachments/assets/3cefd58d-de19-4c53-a68a-683591f2e076)

Cognitive Behavioral Therapy (CBT):  
Focuses on identifying and challenging negative thought patterns directly, aiming to change them into more positive and adaptive ones through structured exercises and homework assignments.

Mindfulness-Based Cognitive Therapy (MBCT): 
Integrates mindfulness practices with cognitive therapy techniques. It encourages individuals to observe their thoughts and emotions without judgment, and acceptance to prevent relapse and manage symptoms.

### Dataset
The data is a longitudinal dataset sourced from the study titled "What Works Best for Whom."
In this longitudinal dataset patients were followed for a year, and BDI score (Beck Depression Inventory) were measured at pre-treatment, post-treatment, and at the 9-month follow-up. The response variable is the BDI score  where the predictors include Group of treatment, Gender, Age, Education level, Type of diabetes, Comorbidities, and Neuroticism.

### Data Preparation and Modeling 
Data preparation involved conducting data cleaning, modification, and pivoting to prepare the dataset for detailed analysis and visualization. This process included transforming the data into a long format, which required converting Beck Depression Inventory scores variables "BDIpre," "BDIpost," and "BDI9fu" into individual observations.

The normality of the response variable BDI was assessed using the Shapiro-Wilk test and visualized with a histogram plot.

### Analysis Method
The mixed-effects regression model is a powerful tool for analyzing longitudinal data, making it particularly suitable for evaluating the impact of treatments like Cognitive Behavioral Therapy (CBT) and Mindfulness-Based Cognitive Therapy (MBCT) across diverse patient populations over time. Additionally, this model helped identify significant predictors associated with depression by assessing the statistical significance of their effects through hypothesis testing.

The model was also used to predict the BDI score of a 45-year-old female in the MBCT post-treatment period, who has Type 2 diabetes, a high level of education, no comorbidities, and a neuroticism level of 35.

### Results
The results show that the estimated average BDI score decreases by 40% for each additional month of psychological treatment. This indicates that psychological treatments have a significant impact on alleviating depressive symptoms in diabetic patients over time.
