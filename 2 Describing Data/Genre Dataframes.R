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