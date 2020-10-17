
# Q1 ----------------------------------------------------------------------

'''
Run the following commands in R.

library(car)
View(Davis)
?Davis

Reduce the data to just the data for the males. Use the (reduced) data for males to complete all the question below.

How many rows are there in this reduced data set?
  (Hint: The answer is 88. Do not continue with this quiz until you get this value.)
'''
Davis_m <- Davis %>% 
  filter(
    sex == 'M'
  )
summary(Davis_m)

# Q2 ----------------------------------------------------------------------
'''
Fit a simple linear regression model with weight as the response variable and height as the explanatory variable. Use this regression to answer the subsequent questions.

If two men differ in height by 1 cm, what is the expected difference in their weight (measured in kg)? (Give your answer accurate to 0.001 kg.)
'''
mylm <- lm(weight ~ height, Davis_m)
summary(mylm)

answer <- mylm$coefficients[2]


# Q3 ----------------------------------------------------------------------
'''
If two men differ in height by 16.5 cm, what is the expected difference in their weight in kilograms?  (Your answer should be accurate to within 0.01 kg.)
'''
answer3 <- answer * 16.5


# Q4 ----------------------------------------------------------------------

'''
How would you interpret the Y-intercept of this model?
'''
answer4 <- 'The predicted weight of a man with a height of zero is -101.33 kg.'


# Q5 ----------------------------------------------------------------------

'''
Find the estimated average weight in kg of males that are 174 cm tall. (Your answer should be accurate to within 0.01 kg.)
'''

answer5 <- predict(mylm, data.frame(height = 174))


# Q6 ----------------------------------------------------------------------

'''
What is the estimate of the standard deviation of the error terms? (Give your answer with at least two decimal places of precision.)
'''
summary(mylm)

answer6 <- 10.07


# Q7 ----------------------------------------------------------------------
'''
What is the missing element in the simple linear regression model given below?

Y_i=\beta_0+\beta_1X_i+?
'''
answer7 <- 'LaTeX: \epsilon_i'


# Q8 ----------------------------------------------------------------------
'''
How do we interpret the following notation:
LaTeX: \epsilon_i\sim N\left(0,\sigma^2\right)
'''

answer8 <- 'The error terms are normally distributed with mean 0 and variance LaTeX: \sigma^2'

# Q9 ----------------------------------------------------------------------
'''
Fill in the blanks below by copying and pasting words from the following list. You can use these more than once, and you do not have to use all of them. Please be sure you copy and paste carefully, so you do not miss any points.

True mean (or expected value) of y
Estimated mean value of y
Observed value of y
True slope
True intercept
Estimated slope
Estimated intercept
Error term
Residual
Which of the terms above best describes the following symbols?
'''


# Q10 ---------------------------------------------------------------------

'''
Which of the following are assumed to be normally distributed? 
'''

