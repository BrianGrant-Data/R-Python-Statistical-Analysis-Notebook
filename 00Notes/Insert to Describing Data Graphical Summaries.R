# 
moviesbudget <- movies %>%
  select(title, year, length, budget, rating, votes) %>% 
  filter(!is.na(budget))

# Scatterplot Examples 
## Base R examples
plot(moviesbudget$budget, type="l")

plot(votes ~ year, data = moviesbudget, pch=20)

plot(votes ~ year, data = moviesbudget, 
     xlab = "Votes", 
     ylab = "Year",
     main = "Votes for Movies by Year",
     pch=20)

## ggplot examples
ggplot(airquality, 
       aes(x = Temp,
           y = Ozone)) +
  geom_point(
    color = "firebrick", 
    pch = 16
    ) +
  labs(
    title = "Exponential Growth in Ozone with Increasing Temp",
    x = "Daily Maximum Temperature",
    y = "Mean Ozone in Parts per Billion (from 1300 to 1500 hours)"
  ) +
  theme_bw()


# Barchart examples
## Base R examples
barplot(c(20, 5, 1, 3))

barplot(c(
  unit1 = 20,
  unit2 = 5,
  unit3 = 1,
  unit4 = 3
  ),
  col = "gray44")

