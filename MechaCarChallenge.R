
# Deliverable 1

Mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_car) #generated multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_car)) #generated summary statistics


# Deliverable 2

coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups="keep")  #created summary table


lot_summary <- coil_table %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #creating summary table using groupby

# Deliverable 3

t.test(coil_table$PSI, mu=1500) #comparing sample versus population means


t.test(subset(coil_table,Manufacturing_Lot =='Lot1',select='PSI'),mu=1500) # comparing mean of lot 1

t.test(subset(coil_table,Manufacturing_Lot =='Lot2',select='PSI'),mu=1500) # comparing mean of lot 2

t.test(subset(coil_table,Manufacturing_Lot =='Lot3',select='PSI'),mu=1500) # comparing mean of lot 3



      
      
      
      