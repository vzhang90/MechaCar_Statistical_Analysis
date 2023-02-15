# MechaCar_Statistical_Analysis
This project investigates the production data utilizing R programming for statistical modeling and hypothesis testing that could give further insight to the manufacturing team with its production troubles in developing AutosRUs' newest prototype, the MechaCar.

## Linear Regression to Predict MPG
Which variables/coefficients provided a non0random amount of variance to the mpg values in the data set.

The slope of the linear model is considered to be zero because

This linear model predicts the mpg of MechaCar prototypes effictevely because


## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

A total summary dataframe using the <code>summarize()</code> function to obtain the mean, median, variance, & standard deviation of the suspension coil's PSI column shown below:  
  
![total_summary](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/total_summary.png)

A lot summary dataframe using the <code>group_by()</code> and the <code>summarize()</code> function to group each manufcaturing lot by the mean median, variance, & standard deviation of the suspension coil's PSI column shown below:
 
![lot_summary](https://github.com/vzhang90/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png)

The current manufacturing data meets this design specification for all manufacturing lots in total. However individually, only Lot 1 and 2 meet the requirement where the suspension coils must no exceed 100 lbs/sq in. Lot 3 does not meet this design specification with a larger variance at 170.286 lbs/sq in.

## T-Tests on Suspension Coils
A T-test statistical test was used with the <code>t.test()</code> function between all manufacturing lots to determine if the PSI is statistically different from the population mean of 1,500 pounds per square inch. 

Subsequently for each individual manufacturing lot, the <code>t.test()</code> function and its <code>subset()</code> argument was used to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. 

## Study Design: MechaCar vs Competition
