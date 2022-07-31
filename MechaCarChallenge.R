library(tidyverse)
library(dplyr)

#Deliv 1 
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~  AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length ,data=df) #generate multiple linear regression model

summary(lm(mpg ~  AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length ,data=df)) #generate summary statistics
#Deliv 2 
sc_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- sc_data %>% summarize(Mean_Mileage=mean(PSI),Median=median(PSI),Variance= var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table
summarize_data <- sc_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_Mileage=mean(PSI),Median=median(PSI),Variance= var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table
summarize_data

#Deliv 3

#one sample t test 
t.test(sc_data$PSI,mu=1500) #compare sample versus population means

#Lot 1 
Lot_1 <- filter(sc_data,Manufacturing_Lot == "Lot1")
t.test(Lot_1$PSI,mu=1500) #compare sample versus population means

Lot_2 <- filter(sc_data,Manufacturing_Lot == "Lot2")
t.test(Lot_2$PSI,mu=1500) #compare sample versus population means
Lot_3 <- filter(sc_data,Manufacturing_Lot == "Lot3")
t.test(Lot_3$PSI,mu=1500) #compare sample versus population means

