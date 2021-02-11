# Delievrable 1

Mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# df <- data.frame(Mecha_car)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_car) #generated multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_car)) #generated summary statistics

model <- lm(mpg ~ vehicle_length,Mecha_car) #create linear model
yvals <- model$coefficients['vehicle_length']*Mecha_car$vehicle_length +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(Mecha_car,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Deliverable 2

coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups="keep")  #create summary table

total_summary <- summarise (coil_table, Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups="keep")

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #creating summary table using groupby
