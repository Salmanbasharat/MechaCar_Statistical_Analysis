Mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_car) #generated multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_car)) #generated summary statistics
