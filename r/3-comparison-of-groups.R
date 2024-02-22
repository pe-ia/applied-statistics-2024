# Load the mtcars dataset
data(mtcars)

# Graphical comparison of mpg across different cylinder groups
boxplot(mpg ~ cyl, data = mtcars,
        main = "MPG by Number of Cylinders",
        xlab = "Number of Cylinders", ylab = "Miles Per Gallon")

# One-Way ANOVA for mpg across cylinder groups
anova_result <- aov(mpg ~ as.factor(cyl), data = mtcars)
summary(anova_result)

# Checking assumptions

# Normality check for each cylinder group for 'mpg'
shapiro.test(mtcars$mpg[mtcars$cyl == 4])
shapiro.test(mtcars$mpg[mtcars$cyl == 6])
shapiro.test(mtcars$mpg[mtcars$cyl == 8])

# Homogeneity of variances (Levene's Test is not available in base R, using Bartlett's test as an alternative)
bartlett.test(mpg ~ as.factor(cyl), data = mtcars)

# Since mtcars does not have paired data, let's simulate a scenario for demonstration purposes
# Simulating before and after data for a paired sample scenario
set.seed(123) # For reproducibility
before <- rnorm(10, 20, 5)
after <- before + rnorm(10, -2, 2) # Assume some decrease

# Paired t-test
paired_test_result <- t.test(before, after, paired = TRUE)
print(paired_test_result)