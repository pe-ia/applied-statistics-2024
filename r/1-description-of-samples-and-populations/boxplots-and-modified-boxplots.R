# Example data: A sample of quantitative observations
observations <- c(22, 26, 24, 19, 23, 27, 28, 18, 30, 40, 15)  # Replace with actual data

# Standard Boxplot
boxplot(observations, 
        main = "Standard Boxplot", 
        ylab = "Values",
        xlab = "Data",
        range=0) # range=0 extends whiskers to minimum and maximum values

# Modified Boxplot
boxplot(observations, 
        main = "Modified Boxplot", 
        ylab = "Values",
        xlab = "Data")
