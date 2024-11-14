## Examine the Effectiveness of Psychological Treatments in Alleviating Depressive Symptoms for Diabetes.
![image](https://github.com/user-attachments/assets/1582015f-9f60-48fa-a942-c476758648cc)


### Intro
The mixed-effects regression model is a powerful tool for analyzing longitudinal data, making it particularly suitable for evaluating the impact of treatments like Cognitive Behavioral Therapy (CBT) and Mindfulness-Based Cognitive Therapy (MBCT) across diverse patient populations over time. Additionally, this model helped identify significant predictors associated with depression by assessing the statistical significance of their effects through hypothesis testing.

*Diabetes: A chronic disease that affects the transformation of food into energy, breaking down most of the food in the body into sugar (glucose) and releasing it into the bloodstream. According to National Diabetes Statistics Report, 38.4 million people have diabetes (11.6% of the US population). 

![image](https://github.com/user-attachments/assets/774d07b3-145d-42ae-acb3-02d63b7413b9)

According to the Life Line Screening, the main difference between the two types of diabetes is:
1. Type I diabetes is a genetic disorder that often shows up early in life. 
2. Type II is largely diet-related and develops over time.

![image](https://github.com/user-attachments/assets/8b4d5cb2-fd7c-42f9-8712-793f0f4616f2)

Psychological Treatments for Diabetes: Diabetes not only impacts the physical well-being of patients but also takes a toll on their mental health. A significant portion of individuals grappling with diabetes experience symptoms of depression.

![image](https://github.com/user-attachments/assets/cb0a6bbd-ead4-4fc8-b24d-137e7f889945)

Cognitive Behavioral Therapy (CBT): Focuses on identifying and challenging negative thought patterns directly, aiming to change them into more positive and adaptive ones through structured exercises and homework assignments.

Mindfulness-Based Cognitive Therapy (MBCT): Integrates mindfulness practices with cognitive therapy techniques. It encourages individuals to observe their thoughts and emotions without judgment, and acceptance to prevent relapse and manage symptoms.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Dataset
The data is a longitudinal dataset sourced from the study titled "What Works Best for Whom."
In this longitudinal dataset patients were followed for a year, and BDI score (Beck Depression Inventory) were measured at pre-treatment, post-treatment, and at the 9-month follow-up. The response variable is the BDI score  where the predictors include Group of treatment, Gender, Age, Education level, Type of diabetes, Comorbidities, and Neuroticism.

![image](https://github.com/user-attachments/assets/8a624e65-cdcb-4475-ba10-211149a8ae34)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Data Preparation and Modeling 
![image](https://github.com/user-attachments/assets/2fb04d1b-5062-401b-a0ec-5c8bd000aef9)

Data preparation involved conducting data cleaning, modification, and pivoting to prepare the dataset for detailed analysis and visualization. This process included transforming the data into a long format, which required converting Beck Depression Inventory scores variables "BDIpre," "BDIpost," and "BDI9fu" into individual observations.

![image](https://github.com/user-attachments/assets/ec86b3c3-b4c2-479f-9ac1-2c6dafea70f6)

The normality of the response variable BDI was assessed using the Shapiro-Wilk test and visualized with a histogram plot.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### Results & Interpretation
  ![image](https://github.com/user-attachments/assets/6103dc03-ffa7-4d2b-81b0-db344596f449)

![image](https://github.com/user-attachments/assets/c4e82eab-a85a-466c-8784-d23e3fd1612b)

The model identifies key predictors of the response variables by evaluating their statistical significance through hypothesis testing, with significant predictors defined as those having a p-value < 0.05. The significant predictors include gender, age, neuroticism level, and month. 

Ê(BDI) = -21.578252 + .807103 CBT + 4.702615 Male + .294769 Age + 4.115252 Low Education + 3.097370 Intermediate Education + 2.875266 Diabetes Type I  - 2.089979 Comorbidities + .534734 Neuroticism - .406505 Month.
- For males, the estimated average BDI score (Beck Depression Inventory) is 4.702615 points higher than for females. 
- Additionally, for every additional year of age, the estimated average BDI score increases by 29.4%. 
- Moreover, as the neuroticism level increases by one unit, the estimated average BDI score increases by 53.4%.
- Conversely, the estimated average BDI score decreases by 40.6% for every three months of psychological treatment.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Prediction BDI Score 
Here I used the model to predict the BDI score of a 45-year-old female in the MBCT post-treatment period, dealing with type II diabetes, who has a high level of education and no comorbidities. Her neuroticism level is 35. The BDI score for this case is 9.18. 

![image](https://github.com/user-attachments/assets/94cced2a-9cb7-40b7-8216-1f7c926219ac)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Conclusion 
Based on the results, we can conclude that psychological treatments significantly alleviate depressive symptoms in diabetic patients, reducing them by approximately 41% every three months of treatment. However, we can also conclude that there is no significant difference between the CBT treatment and MBCT treatment for diabetic patients, as the p-value of the CBT treatment is greater than 5%. The "What Works Best for Whom" study found that both therapies, CBT and MBCT, helped reduce depression in diabetic patients, which supports the results we obtained.

![image](https://github.com/user-attachments/assets/7f70bcb7-6176-4636-a365-0fb12821f8d2)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Reference:
[1] National Institute of Diabetes and Digestive and Kidney Diseases. “Diabetes Statistics -
NIDDK.” National Institute of Diabetes and Digestive and Kidney Diseases, Jan. 2024,
www.niddk.nih.gov/health-information/health-statistics/diabetesstatistics#:~:text=Estimated%20prevalence%20of%20diabetes%20in.

[2] Life Line Screening. “What’s the Difference between Type 1 and Type 2 Diabetes?”
Www.lifelinescreening.com, www.lifelinescreening.com/health-education/diabetes/type-1-type2-diabetes?sourcecd=WNAT003.

[3] Egede, Leonard E., and Charles Ellis. “Diabetes and Depression: Global Perspectives.”
Diabetes Research and Clinical Practice, vol. 87, no. 3, Mar. 2010, pp. 302–312,
www.sciencedirect.com/science/article/abs/pii/S0168822710000471,
https://doi.org/10.1016/j.diabres.2010.01.024.

[4] Elias, Daniel. “Free Works Cited Generator [Updated for 2021].” MyBib,
www.mybib.com/tools/works-cited-generator. 
