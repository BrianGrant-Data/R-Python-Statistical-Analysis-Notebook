# Testing the basic R Commands
table(cars$speed)
table(KidsFeet$sex, KidsFeet$birthmonth)

view(filter(KidsFeet, birthyear == 87))

select(KidsFeet, c(name, birthyear, birthmonth))

KidsFeet %>% filter(birthyear == 87) %>% select(c(name, birthyear, length))

KidsFeet %>% summarise(avelength = mean(length))

KidsFeet %>% group_by(sex) %>% summarise(aveLength = mean(length), sdLength = sd(length), sampleSize = n())

Kids3 <- KidsFeet %>% 
  mutate(
    season = case_when(
      birthmonth %in% c(12,1,2) ~ "Winter",
      birthmonth %in% c(3,4,5) ~ "Spring",
      birthmonth %in% c(6,7,8) ~ "Summer",
      birthmonth %in% c(9,10,11) ~ "Fall"
    )
  )
View(Kids3)

KidsFeet %>% 
  arrange(birthmonth)

pander(table(KidsFeet$sex, KidsFeet$birthmonth), caption="Counts of Birthdays by Month")


library(tidyverse)
library(mosaic)

# Testing the graphical summaries page
## Red histogram
hist(airquality$Wind, col="firebrick", xlab = "Daily Average Wind Speed (mph)", main="La Guardia Airport")
View(airquality$Wind)
## Blue boxpot
boxplot(Wind ~ Month, data=airquality, col="skyblue", xlab = "Month of the Year")
## Gray scatterplot
plot(Wind ~ Temp, data = airquality, col = "gray", pch=19)

# Testing the numerical summaries page
## Mean
mean(airquality$Wind)
## Median
median(airquality$Wind)
## Mode
table(airquality$Wind)
## Minimum
min(airquality$Wind)
## Maximum
max(airquality$Wind)
## Quartiles (five-number summary)
pander(summary(airquality$Wind))
## Standard deviation
sd(airquality$Wind)
## Variance
var(airquality$Wind)
## Range
range(airquality$Wind)
## Percentile (Quantile)
quantile(airquality$Wind, .25)
## Proportion

## Correlation
cor(airquality$Wind, airquality$Temp)
