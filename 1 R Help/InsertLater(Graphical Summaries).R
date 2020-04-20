# Histograms
#movielist <- read_csv("tmdb_5000_movies", col_names = TRUE) 
#moviecredits <- read_csv("tmdb_5000_credits", col_names = TRUE)
movies <- ggplot2movies::movies

hist(movies$budget)
hist(movies$budget, col="skyblue")
hist(movies$budget, 
     col="skyblue", 
     xlab = "Budget",
     main = "ggplot2 Movie Budgets")

# Boxplots
boxplot(rating ~ mpaa, data=movies)
boxplot(budget ~ mpaa, data=movies)
## How do you make groups within the vote_average group?


# Dotplots
stripchart(budget ~ mpaa, data=movies)

# Scatterplots
plot(budget ~ year, data=movies)
plot(budget ~ rating, data=movies)
plot(rating ~ year, data=movies)

# Barcharts
barplot(table(movies$year))
barplot(table(movies$rating))
barplot(table(movies$budget))
barplot(table(movies$length))
barplot(table(movies$votes))


# Custom plots
plot(density(CO2$uptake[CO2$Type=="Quebec"]), 
     main="", col='skyblue4',
     xlab="", ylab="", xaxt='n', yaxt='n')
lines(density(CO2$uptake[CO2$Type=="Mississippi"]), 
      col='firebrick')

