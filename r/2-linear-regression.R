# Load the dataset
data(mtcars)

# View the first few rows of the dataset, just like in jupyter
head(mtcars)

# Plotting mpg against wt
# pch is the point shape, 19 is a filled round dot
plot(mtcars$wt, mtcars$mpg, main="MPG vs Weight", xlab="Weight (1000 lbs)", ylab="Miles per Gallon", pch=19)

# Fitting a linear model
# lm is a R function for fitting linear models
model <- lm(mpg ~ wt, data=mtcars)

# Plot the linear regression line for mpg against wt using the model
abline(model, col="blue")

# Transforming hp to a logarithmic scale
mtcars$log_hp = log(mtcars$hp)

# Plotting log(hp) against mpg with a regression line
plot(mtcars$log_hp, mtcars$mpg, main="MPG vs Log(Horsepower)", xlab="Log(Horsepower)", ylab="Miles per Gallon", pch=19)
abline(lm(mpg ~ log_hp, data=mtcars), col="green")

# Calculating residuals for the mpg against wt model
residuals <- resid(model)

# Plotting residuals
plot(mtcars$wt, residuals, main="Residuals of MPG vs Weight Model", xlab="Weight (1000 lbs)", ylab="Residuals", pch=19)
abline(h=0, col="blue")

# Calculating and printing the residual standard deviation
residual_sd <- sd(residuals)
cat("Residual Standard Deviation:", residual_sd, "\n")
