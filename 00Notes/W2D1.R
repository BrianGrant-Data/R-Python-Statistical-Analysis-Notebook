Rent[1:30, 5:6]

Rent[1,] # returns all of the values in the first column
Rent[,1] # returns the first row in all of the columns

is.na(Rent$Price)
sum(is.na(Rent$Price))
sum(!is.na(Rent$Price))
sum(is.na(Rent$WalkingMinutes))

R1 <- 