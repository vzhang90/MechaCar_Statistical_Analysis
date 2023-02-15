# use the library() function to load the dplyr package
library(dplyr)

# import & read in the MechaCar_mpg.csv file as a dataframe
mechacar_df <- read.csv(file="MechaCar_mpg.csv")

# perform linear regression using the lm() function. In the lm() function, pass in all 
# six variables (i.e., columns), and add the dataframe created previously as the data parameter
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_length + vehicle_length, data = mechacar_df)

# using the summary() function, determine the p-value & r-squared value for the linear regression model
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_length + vehicle_length, data = mechacar_df))

# import & read in the Suspension_Coil.csv file as a table
suspension_coil <-read.csv("Suspension_Coil.csv")

# create a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- summarize(suspension_coil, 
                           mean=mean(PSI), 
                           median=median(PSI), 
                           variance=var(PSI), 
                           sd=sd(PSI))

# create a lot_summary dataframe using the group_by() & summarize() functions
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the 
# suspension coil's PSI column
lot_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI))
  
# use t.test() function to determine if PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI, mu = 1500)
  
# write 3 more RScripts using the t.test() function and its subset() argument
# to determine if the PSI for each manufacturing lot is statistically different from 
# the population mean of 1,500 pounds per square inch  
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)