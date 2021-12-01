library(readxl)
Data_Coronary <- read_excel("Data_Coronary.xlsx")
View(Data_Coronary)
attach(Data_Coronary)
library(dplyr)
library(rstatix)

Data_Coronary %>% cor_test()


df <- Data_Coronary %>% select(HR_percentage,VO2,RPE,Lactate)

##ALL
res.cor.test <- Data_Coronary %>% select(HR_percentage,VO2,RPE,Lactate,Power) %>%
  cor_test()
res.cor.test

Low <- Data_Coronary %>% filter(Stage == "Low")
Low %>% shapiro_test(VO2)

res.cor.test_low <- Data_Coronary %>% select(HR_percentage,VO2,RPE,Lactate,Power) %>%
  cor_test()
res.cor.test_low


Moderate <- Data_Coronary %>% filter(Stage == "Moderate")
Moderate %>% shapiro_test(HR_percentage)

res.cor.test_moderate <- Data_Coronary %>% select(HR_percentage,VO2,RPE,Lactate,Power) %>%
  cor_test()
res.cor.test_moderate


High <- Data_Coronary %>% filter(Stage == "High")
High %>% shapiro_test(HR_percentage)

res.cor.test_high <- Data_Coronary %>% select(HR_percentage,VO2,RPE,Lactate,Power) %>%
  cor_test()
res.cor.test_high

