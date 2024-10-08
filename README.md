## Examine the Effectiveness of Psychological Treatments in Alleviating Depressive Symptoms for Diabetes.

### Intro
Diabetes: A chronic disease that affects the transformation of food into energy, breaking down most of the food in the body into sugar (glucose) and releasing it into the bloodstream. According to National Diabetes Statistics Report, 38.4 million people have diabetes (11.6% of the US population). 
![image](https://github.com/user-attachments/assets/d9bfd5b8-7da8-4894-b002-da52ba54c731)

According to the Life Line Screening, the main difference between the two types of diabetes is:
1. Type I diabetes is a genetic disorder that often shows up early in life. 
2. Type II is largely diet-related and develops over time. 
![image](https://github.com/user-attachments/assets/98975894-e8d8-40f9-b076-0e6d2309c76d)

Psychological Treatments for Diabetes: Diabetes not only impacts the physical well-being of patients but also takes a toll on their mental health. A significant portion of individuals grappling with diabetes experience symptoms of depression.
![image](https://github.com/user-attachments/assets/3cefd58d-de19-4c53-a68a-683591f2e076)

Cognitive Behavioral Therapy (CBT):  
Focuses on identifying and challenging negative thought patterns directly, aiming to change them into more positive and adaptive ones through structured exercises and homework assignments.
Mindfulness-Based Cognitive Therapy (MBCT): 
Integrates mindfulness practices with cognitive therapy techniques. It encourages individuals to observe their thoughts and emotions without judgment, and acceptance to prevent relapse and manage symptoms.

The mixed-effects regression model is a powerful tool for analyzing longitudinal data, making it particularly suitable for evaluating the impact of treatments like Cognitive Behavioral Therapy (CBT) and Mindfulness-Based Cognitive Therapy (MBCT) across diverse patient populations over time. Additionally, this model helped identify significant predictors associated with depression by assessing the statistical significance of their effects through hypothesis testing.
### Dataset
The data is a longitudinal dataset sourced from the study titled "What Works Best for Whom."
In this longitudinal dataset patients were followed for a year, and BDI score (Beck Depression Inventory) were measured at pre-treatment, post-treatment, and at the 9-month follow-up. The response variable is the BDI score  where the predictors include Group of treatment, Gender, Age, Education level, Type of diabetes, Comorbidities, and Neuroticism.

### Data Preparation and Modeling 
![image](https://github.com/user-attachments/assets/2fb04d1b-5062-401b-a0ec-5c8bd000aef9)
Data preparation involved conducting data cleaning, modification, and pivoting to prepare the dataset for detailed analysis and visualization. This process included transforming the data into a long format, which required converting Beck Depression Inventory scores variables "BDIpre," "BDIpost," and "BDI9fu" into individual observations.
![image](https://github.com/user-attachments/assets/4fe743db-32be-4793-83e0-57518a3dff08)
![image](https://github.com/user-attachments/assets/0896281c-2a4a-40a8-87a4-63d186c9bd98)
The normality of the response variable BDI was assessed using the Shapiro-Wilk test and visualized with a histogram plot.

### Results & Interpretation
![image](https://github.com/user-attachments/assets/18fb791c-651f-4bd7-9e5b-110e0fb8ddb8)

![image](https://github.com/user-attachments/assets/c4e82eab-a85a-466c-8784-d23e3fd1612b)

Ê(BDI) = -21.578252 + .807103 CBT + 4.702615 Male + .294769 Age + 4.115252 Low Education + 3.097370 Intermediate Education + 2.875266 Diabetes Type I  - 2.089979 Comorbidities + .534734 Neuroticism - .406505 Month.
- For males, the estimated average BDI score (severity of depressive symptoms) is 4.702615 points higher than for females. 
- Additionally, for every additional year of age, the estimated average BDI score increases by 29.4%. 
- Moreover, as the neuroticism level increases by one unit, the estimated average BDI score increases by 53.4%.
- Conversely, the estimated average BDI score decreases by 40.6% points as time increases by one month of psychological treatment.

### Prediction BDI Score 
Here I used the model to predict the BDI score of a 45-year-old female in the MBCT post-treatment period, dealing with type II diabetes, who has a high level of education and no comorbidities. Her neuroticism level is 35. The BDI score is 9.18. 
![image](https://github.com/user-attachments/assets/94cced2a-9cb7-40b7-8216-1f7c926219ac)


### Conclusion 
Based on the results we obtained, we can conclude that psychological treatments have a significant impact on alleviating depressive symptoms in diabetic patients over time. However, we can also conclude that there is no significant difference between the CBT treatment and MBCT treatment for diabetic patients, as the p-value of the CBT treatment is greater than 5%. The "What Works Best for Whom" study found that both therapies, CBT and MBCT, helped reduce depression in diabetic patients, which supports the results we obtained.
