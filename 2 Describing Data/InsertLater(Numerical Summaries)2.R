?hist
?boxplot
?stripchart
?plot
library(mosaic)
View(KidsFeet)
?KidsFeet
?table
table(KidsFeet$sex)
table(KidsFeet$biggerfoot)
# table(KidsFeet$domhand, KidsFeet$sex)

library(tidyverse)
library(pander)
KidsFeet %>% 
  group_by(sex) %>%
  summarise(min = min(length),
            Q1 = quantile(length, c(.25)),
            med = median(length),
            Q3 = quantile(length, c(.75)),
            max = max(length),
            sd = sd(length),
            n = count(group_by(length)) %>%
              pander()
            