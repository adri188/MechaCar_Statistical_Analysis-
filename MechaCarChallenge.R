library(tidyverse)
library(dplyr)
df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~  AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length ,data=df) #generate multiple linear regression model

summary(lm(mpg ~  AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_lenght ,data=df)) #generate summary statistics