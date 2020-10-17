library(mosaicData)
library(tidyverse)

util_lm <- lm(gasbill ~ temp, data = Utilities)
summary(util_lm)


cars.lm <- lm(dist ~ speed, data=cars)
summary(cars.lm)
confint(cars.lm)

beta <- cars.lm$coefficients

# Intercept
t_int <- ()

# Slope