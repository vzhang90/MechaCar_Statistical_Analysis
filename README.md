# MechaCar Statistical Analysis
This project investigates the production data utilizing R programming for statistical modeling and hypothesis testing that could give further insight to the manufacturing team with its production troubles in developing AutosRUs' newest prototype, the MechaCar.

**Resources:**
[MechaCarChallenge.Rscript](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)

## Linear Regression to Predict MPG
1) A **linear regression** using the `lm()` function was first ran to pass in all six variables from `mechacar_df` *(the dataframe generated from the MechaCar_mpg.csv file)*
> **`lm()` function to determine correlation to mpg:** 
![linear regression](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/linear_regression.png)
  
  
2) Using the `summary()` function, the **p-value** and **r-squared value** can be determined from the linear regression model
> **`summary()` function of Linear Regression:** 
![summary_linear_regression](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/summary_linear_regression.png)

***- Ground clearance and vehicle length are the only variables that provide a non-random amount of variance to the mpg values in the dataset***

***- The slope of the linear model is not considered to be zero because the low p-value below 0.05 indicates there is evidence that the coefficient has statistical significance where the slope is significantly different than zero***

***- This linear model predicts the mpg of MechaCar prototypes with moderate correlation strength based on the r-squared value falling in range 0.5&le;r&le;0.7***


## Summary Statistics on Suspension Coils
<sub>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch</sub>

1) A `total_summary` dataframe using the <code>summarize()</code> function to obtain the mean, median, variance, & standard deviation of the suspension coil's PSI column shown below:  
> ![total_summary](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

2) A `lot_summary` dataframe using the <code>group_by()</code> and the <code>summarize()</code> function to group each manufacturing lot by the mean median, variance, & standard deviation of the suspension coil's PSI column shown below:
> ![lot_summary](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

***The current manufacturing data meets this design specification for all manufacturing lots in total. However individually, only Lot 1 and 2 meet the requirement where the suspension coils must no exceed 100 lbs/sq in. Lot 3 does not meet this design specification with a larger variance at 170.286 lbs/sq in.***

## T-Tests on Suspension Coils
A **one-sample t-test** was used *(vs a two-sample t-test comparing statistical significance between two data sets because comparing one dataset sample mean to a population mean)* with the <code>t.test()</code> function on the PSI column of the suspension data to determine if the mean PSI value across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch  
**- Null Hypothesis:** H<sub>0</sub> : There is no statistical difference between the observed sample mean and its presumed population mean.  
**- Alternative Hypothesis:** H<sub>a</sub> : There is a statistical difference between the observed sample mean and its presumed population mean.
 
> **T-test across all manufacturing lots:**
![T-test across all manufacturing lots](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/t.test_PSI_all_manufacturing_lots.png) 

***Because the calculated t-value of -1.8931 is less than the one-tailed critical t-value 1.660&le;t<sub>crit</sub>&le;1.646 for 100-1,000 degrees of freedom for a p-value of 0.05, the null hypothesis cannot be rejected where there is not enough evidence to support a statistical difference between the mean PSI value across all manufacturing lots compared to the population mean of 1,500 lbs/sq in***


---
Subsequently for each individual manufacturing lot, the <code>t.test()</code> function and its <code>subset()</code> argument was used to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

> **T-test of lot 1:**
![t-test of lot 1](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/t.test_lot1.png) 

*** The mean PSI of manufacturing Lot 1 is not statistically different from the population mean of 1,500 lbs/in<sup>2</sup>***
---
> **T-test of lot 2:**  
![t-test of lot 2](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/t.test_lot2.png) 

*** There is not enough evidence to suggest the mean PSI of manufacturing Lot 2 is statistically different from the population mean of 1,500 lbs/in<sup>2</sup>***
---
> **T-test of lot 3:**  
![t-test of lot 3](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/t.test_lot3.png) 

*** The mean PSI of manufacturing Lot 3 is statistically different from the population mean of 1,500 lbs/in<sup>2</sup>***
---

## Study Design: MechaCar vs Competition
