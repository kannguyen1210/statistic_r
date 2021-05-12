# START DELIVERABLE 1
setwd("~/Desktop/Data Bootcamp/Chap 15 - R/R_Analysis/challenge")

library(dplyr) 

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # import MechaCar_mpg.csv

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) # Generate multiple linear models

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) # Generate summary
#END DELIVERABLE 1

#START DELIVERABLE 2
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # import Suspension_Coil.csv

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Create summary table for PSI

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Create lot summary table for PSI
# END DELIVERABLE 2

# START DELIVERABLE 3
t.test(Suspension_Coil$PSI, mu=1500) #compare sample versus population means

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
# END DELIVERABLE 3