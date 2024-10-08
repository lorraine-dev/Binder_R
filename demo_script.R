# Load necessary libraries
library(tidyverse)

# Generate some synthetic data for demonstration
set.seed(123)
data <- tibble(
  group = rep(c("A", "B"), each = 50),
  value = c(rnorm(50, mean = 5, sd = 1), rnorm(50, mean = 7, sd = 1.5))
)

# Perform a t-test to compare the means of the two groups
t_test_result <- t.test(value ~ group, data = data)
print(t_test_result)

# Plot the data with ggplot2
plot <- ggplot(data, aes(x = group, y = value, fill = group)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Boxplot of Values by Group",
       x = "Group",
       y = "Value")

print(plot)
