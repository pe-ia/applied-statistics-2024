# Set the true parameters for the normal distribution
true_mean <- 0
true_sd <- 1

# Set the number of simulations
n_sim <- 25000

# Generate random samples from the normal distribution
samples <- rnorm(n_sim, mean = true_mean, sd = true_sd)

# Calculate the cumulative mean
cumulative_means <- cumsum(samples) / (1:n_sim)

# Plot the cumulative mean
plot(cumulative_means, type = "l", col = "blue", ylim = c(true_mean - 0.25, true_mean + 0.25),
     xlab = "Number of Samples", ylab = "Cumulative Average",
     main = "Demonstration of the Law of Large Numbers")

# Add a line for the true mean
abline(h = true_mean, col = "red", lwd = 2)

# Annotate the true mean
legend("bottomright", legend = c("Cumulative Mean", "True Mean"), col = c("blue", "red"), lty = 1)
