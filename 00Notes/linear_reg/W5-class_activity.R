# Day 1 ----

?qt()

# Day 2 ----
library(mosaicData)
library(tidyverse)
?Utilities
View(Utilities)

##----

util.lm <- lm(gasbill~temp, data = Utilities)
prediction <- predict(util.lm, data.frame(temp = 30), interval = "prediction")
car::boxCox(util.lm)

util.sqrt.lm <- lm(sqrt(gasbill)~temp, data = Utilities)

ggplot(data=Utilities, aes(x= temp, y=gasbill))+ 
  geom_point()+
  theme_bw()+
  geom_smooth(se=FALSE, color = "pink", method = "lm")+
  geom_vline(xintercept = 30, color = "pink", linetype = "dashed")+
  geom_hline(yintercept = as.vector(prediction), color = "pink", linetype = "dashed")+
  labs(title = "Utilities Data Set")+
  stat_function(fun = function(x) (util.sqrt.lm$coefficients[1] + util.sqrt.lm$coefficients[2]*x)^2, color = "skyblue")

# Day 3 ----
f