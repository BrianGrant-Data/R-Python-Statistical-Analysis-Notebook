This week we're woking on the Stephanie.rmd analysis.

Questions:
  - how do you navigate these files in a way that makes adding notes easy
  - where is the student feedback?

# Prepare Environment

```{r}
library(pander)
library(mosaic)
library(tidyverse)
library(mosaicData)
```

# Class Activity - Working with Data in R


```{r}
table(KidsFeet$sex)

filter(KidsFeet,  )

select(KidsFeet, c(name, birthyear, birthmonth))

Kids2 <- KidsFeet %>%
  filter(birthyear == 1) %>% 
  select(c(name))

KidsFeet %>% 
  summarise(aveLength =  mean(length))

```

# Skils Quiz - Graphical & Statistical Summaries of the airquality dataframe

# Get familiar with the dataframes

```{r}
?airquality
View(airquality)

?KidsFeet
View(KidsFeet)

?Orange
View(Orange)

?Riders
View(Riders)

?mtcars
View(mtcars)
```

# Statistical Summary

## Airquality

```{r}
mean(airquality$Wind)
sd(airquality$Wind)
median(airquality$Wind)
min(airquality$Wind)
max(airquality$Wind)
```

```{r}
tibble(airquality %>% 
         group_by(Month) %>% 
         summarize("Mean Temperature" = mean(Temp)
                   # "Change in Temperature" = 
                   )
)
```

## KidsFeet

```{r}
table(KidsFeet$domhand,
      KidsFeet$sex)
table(KidsFeet$biggerfoot)
table(KidsFeet$birthmonth)
```


```{r}
tibble(KidsFeet %>% 
  group_by(sex) %>% 
  summarise(min = min(length),
            Q1 = quantile(length, 0.25),
            median = median(length),
            Q3 = quantile(length, 0.75),
            max = max(length),
            mean = mean(length),
            sd = sd(length),
            n = length(length),
            missing = count(
              (
                is.na(length)
              ))
            )
  )
```

## Orange

```{r}

Orange484 <- filter(Orange, age %in% c(484, 1004, 1372)
)

Orange484 %>% 
  group_by(age) %>% 
  summarise(circumference = median(circumference))

```

## Riders

```{r}
Riders %>% 
  select(c(day, riders)) %>% 
  group_by(day) %>% 
  summarise(
    riders = sum(riders)
  )
```

## mtcars

```{r}
count(mtcars)

mtcars %>% 
  group_by(cyl) %>% 
  count()

na.omit(mtcars) %>% 
  filter(cyl == 4) %>% 
  group_by(am) %>% 
  summarise(mean = mean(mpg))

na.omit(mtcars) %>% 
  group_by(am) %>% 
  filter(cyl == 8) %>% 
  summarise(mean = mean(qsec))

na.omit(mtcars) %>% 
  filter(cyl == 6, am == 0) %>% 
  select(c(am, wt))
  #wt of the heaviest = 3.460

na.omit(mtcars) %>% 
  filter(cyl == 6, am == 1) %>% 
  select(c(am, wt))
  #wt of the heaviest = 2.875


```


# Graphical Summary

## Temp ~ Wind Airquality Plot

```{r}
pander(
  plot(
    airquality$Temp, 
    airquality$Wind,
    xlab = "Daily Average Temperature",
    ylab = "Daily Average Wind Speed",
    main = "La Quardia Airport \nWarmer Weather Shows Less Wind",
    col = "gray",
    pch = 18
    )
)
```

## Airquaility Daily Mean Radiation Histogram

```{r}
pander(
  hist(
    airquality$Solar.R,
    col = "orange",
    xlab = "Daily Mean Radiation in Langleys (from 0800 to 1200 hours)",
    ylab = "Frequency",
    main = "Central Park, NYC \nDaily Average Radiation"
  )
)
```

## Airquality Solar.R & Month 

```{r}
pander(
  boxplot(
    Solar.R ~ Month,
    airquality,
          col = c("gray",
                  "gray",
                  "orangered",
                  "gray",
                  "gray"
                  ),
          xlab = "Month of the Year",
          ylab = "Radiation in Langleys (Averaged from 0800 to 1200)",
          main = "Central Park, NYC \nDaily Mean Radiation High in July"
  )
)
```

