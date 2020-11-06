#Deliverable 1
#Load the dplyr package
library(dplyr)

#Read the MechaCar_mpg.csv as a dataframe
MechaCar<-read.csv(file = 'MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Perform the linear regression using lm()function passing all six variables with mpg as the y axis
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

#Use the summary() function to determine the p-value and the r-squared value and save code to GitHub
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar))


#Deliverable 2
#Read the csv file
Suspension<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)

#Determine a summary of the total
total_summary<-Suspension%>%
summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

#Create a summary of each of the three lots
lot_summary<-Suspension%>%group_by(Manufacturing_Lot)%>%
summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

