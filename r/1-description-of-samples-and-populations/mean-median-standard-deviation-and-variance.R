# Example data: A sample of quantitative observations
observations <- c(5, 10, 15, 20, 25)  # Replace with actual data

# Calculate the mean
mean_value <- mean(observations)
# The 'mean' function calculates the average of the observations

# Calculate the median
median_value <- median(observations)
# The 'median' function calculates the median of the observations

# Calculate the standard deviation
std_dev <- sd(observations)
# The 'sd' function calculates the standard deviation, 
# which measures the average deviation from the mean

# Calculate the variance
variance_value <- var(observations)
# The 'var' function calculates the variance (standard deviation squared)
# Variance measures how spread out the numbers are from the mean

# Print the results
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Standard Deviation:", std_dev))
print(paste("Variance:", variance_value))
