# Class notes W2

## Load Libraries and View Data
library(mosaic)
library(tidyverse)
library(pander)
View(KidsFeet)

## Boxplot
boxplot(length ~ sex, data = KidsFeet)

## Five-number Summary
KidsFeet %>% 
  group_by(sex) %>% 
  summarise(
    min = min(length),
    Q1 = quantile(length, 0.25),
    median = median(length),
    Q3 = quantile(length, 0.75),
    max = max(length)
  ) %>% 
  pander()
  

## Barplot
barplot(table(KidsFeet$sex))
table(KidsFeet$sex)

## Scatterplot 
plot(length ~ width, data = KidsFeet)

## Correlation
KidsFeet %>% 
  summarise(cor(width, length))
        