library(car)
library(tidyverse)
library(mosaic)
library(pander)

View(Blackmore)
?Blackmore

Blackmore$ageGroup <- cut(Blackmore$age, c(7,10,12,14,18), labels=c("Youth","Pre-Teen","Early-Teen","Late-Teen"))

library(tidyverse) #way to do it

Blackmore <- Blackmore %>%
  mutate(ageGroup = cut(age, c(7,10,12,14,18), labels=c("Youth","Pre-Teen", "Early-Teen", "Late-Teen"), ordered_result = TRUE))

table(Blackmore$ageGroup)
View(Blackmore)

summary(Blackmore$group)
myaov <- aov(
  exercise ~ group + 
    ageGroup + 
    group:ageGroup, 
  data = Blackmore)

pander(myaov)

xyplot(exercise ~ group,
       data=Blackmore, 
       type=c("p","a"), 
       main="Significance of Excercise") 

