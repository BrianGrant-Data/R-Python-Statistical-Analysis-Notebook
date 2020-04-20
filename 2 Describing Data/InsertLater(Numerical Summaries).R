# Dataframes --------------------------------------------------------------
movies <- ggplot2movies::movies

actionmovies <- movies %>% 
  filter(movies$Action == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

animationmovies <- movies %>% 
  filter(movies$Animation == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

comedymovies <- movies %>% 
  filter(movies$Comedy == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

dramamovies <- movies %>% 
  filter(movies$Drama == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

documentarymovies <- movies %>% 
  filter(movies$Documentary == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

romancemovies <- movies %>% 
  filter(movies$Romance == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

shortmovies <- movies %>% 
  filter(movies$Short == 1) %>% 
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

# Functions Examples ------------------------------------------------------

# Mean
  mean(movies$length)

# Median
  median(actionmovies$budget)
# Mode
  table(actionmovies$budget)
  
  library(tidyverse)
  actionmovies %>% 
    group_by(year) %>% 
    summarise(aveBudget = mean(budget), medBudget = median(budget), sampleSize = n( ))
# Minimum
  min(actionmovies$budget)
# Maximum
  max(actionmovies$budget)
# Quartiles (five-number summary)
  summary(actionmovies$budget)
  summary(actionmovies$votes)
  summary(actionmovies$rating)
# Standard Deviation
  sd(actionmovies$budget)
# Variance
  var(actionmovies$budget)
# Range
  max(actionmovies$budget) - min(actionmovies$budget)
# Percentile (Quartiles)
  quantile(actionmovies$budget, .25)
# Proportion
# Coorelation