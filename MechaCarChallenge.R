
#Deliverable 1
#Load the dplyr package
library(dplyr)

#Read the MechaCar_mpg.csv as a dataframe
MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform the linear regression using lm()function passing all six variables with mpg as the y axis
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

#Use the summary() function to determine the p-value and the r-squared value and save code to GitHub
summary(Mecha_lm)





#Deliverable 2
#Read the Suspension_Coil.csv file as a table
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)

#Create a total_summary dataframe using the summarize() function
#to get the mean, median, variance, and standard deviation of the PSI column
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

#Create a lot_summary dataframe using groupby() and summarize() functions 
#to group each lot by the mean, median, variance, and standard deviation of the PSI column
lot_summary <-Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))


#Deliverable 3
#Using t.test() function to determine if the PSI across all lots is 
#statistically different from the population mean of 1500 ppsi
#First test all lots
t.test(Suspension$PSI,mu=1500)

#Test for lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

#Test for Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

#Test for Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
