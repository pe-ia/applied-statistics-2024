# Parameters
mean_vector <- c(170, 65)
mu_height <- 170
mu_weight <- 65
var_height <- 25
var_weight <- 36
cov_hw <- 18

# Generating grid points for height and weight
heights <- seq(mu_height - 3*sqrt(var_height), mu_height + 3*sqrt(var_height), length.out = 100)
weights <- seq(mu_weight - 3*sqrt(var_weight), mu_weight + 3*sqrt(var_weight), length.out = 100)

# Function to calculate the density of the Multivariate Gaussian
mvn_density <- function(x, y, mu, Sigma) {
  exp(-0.5 * t(c(x - mu[1], y - mu[2])) %*% solve(Sigma) %*% c(x - mu[1], y - mu[2])) /
    (2 * pi * sqrt(det(Sigma)))
}

# Calculate density values
Sigma <- matrix(c(var_height, cov_hw, cov_hw, var_weight), nrow = 2)
density_values <- outer(heights, weights, Vectorize(function(x, y) mvn_density(x, y, mu = c(mu_height, mu_weight), Sigma = Sigma)))

# Plot with filled contours
filled.contour(heights, weights, density_values,
               xlab = "Height (cm)", ylab = "Weight (kg)",
               main = "Height vs Weight Distribution with Color Shading",
               color.palette = colorRampPalette(c("blue", "green", "yellow", "red")),
               key.title = title(main = "Density Levels", cex.main = 1),
               key.axes = axis(4, las = 1))