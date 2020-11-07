# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
I've used the MechaCar_mpg.csv dataset and RScript to design the following multiple linear regression model for predicting 'miles per gallon'(mpg) statistics.
<img src="readmepics/deliverable1_linear_regression.png">

In the above picture, the variables/coefficents' p-values (Pr(>|t|)) are: 

- vehicle length (2.60e-08) 
- vehicle weight(0.0776) 
- spoiler angle(0.3069)
- ground clearance(5.21e-08)
- AWD(All Wheel Drive)(0.1852) 


### 1.) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
From the formula results it is possible to predict that the following variables/coefficients provide a non-random amount of variance to the mpg values: 
 - vehicle weight(0.0776)
 - spoiler angle(0.3069)
 - AWD(All Wheel Drive)(0.1852) 

### 2.) Is the slope of the linear model considered to be zero? Why or why not?
P-values (probability values) for the above variables are smaller than our significance level of 0.05. For example, the following is a calculation of the significance level for vehicle weight: 0.076 -1 = 0.9224 or 92.4%. The desired significance level is 0.05 - 1 = 0.95 or 95%). All 3 variable/coefficients are predicted to be below the 95% minimum significance level based o the data provided for the linear model. The intersept value (5.08e-08) in this model is statistically significant as well which means there is the possibility that other variables/coefficients may contribute to the variation in mpg that have not been included in our model (nor in the provided dataset) and those values may still need to be collected or observed to increase the power of the analysis predeiction. The slope of the linear model is not considered to be zero because the p-value is less than 0.05. 


### 3.)Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

According to the summary output, the r-squared value is 0.71, which predicts that approximatley 71% of all mpg predictions will be correct when using this linear model. In addition, the p-value of the linear model is 5.35e-11 (last line of the above picture in the F-statistic results), which is smaller (94.65%) than the assigned and assumed significance level of 0.05 (95%).

## Summary Statistics on Suspension Coils
<img src="readmepics/.png">

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


## T-Tests on Suspension Coils
An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population (5 pt)
An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population (10 pt)
There is a summary of the t-test results across all manufacturing lots and for each lot (5 pt)

## Study Design: MechaCar vs Competiiton

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
### What metric or metrics are you going to test?
### What is the null hypothesis or alternative hypothesis?
### What statistical test would you use to test the hypothesis? And why?
### What data is needed to run the statistical test?
