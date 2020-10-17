# View(mtcars)

cars.lm <- lm(mpg ~ wt, data = mtcars)
summary(cars.lm)

# ----
y_val_function <- c(4.98, 9.25, 9.92, 6.08, 6.65)
y_val <- list(y_val_function)

residuals_function <- c(0.214, 0.569, -0.066, 0.009, -0.726)
residuals <- list(residuals_function)

Y_hat <- y_val_function - residuals_function # find why hat by taking the info we do have and solving for Y_hat

Y_bar <- mean(c(0.214, 0.569, -0.066, 0.009, -0.726))

#mylm <- lm()
#summary(mylm)
# Q12 What is the value of SSE for the regression involving these five points? (Give your answer accurate to four decimal places.) ---- 
SSE <- sum((y_val_function-Y_hat)^2)
SSE

# Q13 What is the value of SSTO for the regression involving these five points? (Give your answer accurate to four decimal places.)----
SSTO <- sum((y_val_function - Y_bar)^2)
SSTO

# Q14 What is the value of SSR for the regression involving these five points? (Give your answer accurate to four decimal places.)

SSR <- sum((Y_hat-Y_bar)^2)
SSR

# Q15 What is the value of R^2 for the regression involving these five points? (Give your answer accurate to four decimal places.)
R_sq <- SSR/SSTO
R_sq

# Q16 (Challenge Question) Unfortunately, the paper upon which the original five data values were recorded was torn, and only the following information remains:
# Unsolved
y <- c(4.98, 9.25, 9.92, 6.08, 6.65)
residuals <- c(0.214, .569, -.066, .009, -.726)
y_hat <- y - residuals
x <- c(1.7, 3.2, 0, 0, 0)

Y <- c(4.98, 9.25)
X <- c(1.7, 3.2)

y_bar = mean(y_hat)

beta_1 <- sum( X*(Y - mean(Y)) ) / sum( (X - mean(X))^2 )
beta_0 <- mean(Y) - beta_1*mean(X)

lm <- lm(Y ~ X)
b_0 <- lm$coefficients[1]
b_1 <- lm$coefficients[2]

# beta_1 <- y[1]/x[1] # 2.929412
# beta_1 <- y[2]/x[2] # 2.890625
# beta_guess_diff <- (y[1]/x[1]- y[2]/x[2])/2
# beta_1 <- y[1]/x[1] - beta_guess_diff # 2.910018
# beta_1 <- y[2]/x[2] + beta_guess_diff # 2.910018

y_hat <- c()

y_hat[1] <- beta_0 + beta_1*x[1]
y_hat[2] <- beta_0 + beta_1*x[2]

y_hat[1] <- b_0 + b_1*x[1]
y_hat[2] <- b_0 + b_1*x[2]
