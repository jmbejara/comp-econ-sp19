##==============================================================================
## REU_regression.R
## This file contains code used to run regressions and produce summary statistics
## using previously generated data on X, Y.
## BY WINNIE VAN DIJK, CREATED ON 3/20/2015
##==============================================================================

# Store the data in a data frame
regdata <- data.frame(X,Y)

# Summarize the data frame
summary(regdata)

# Save the data frame as a .dta file in the working directory
save(regdata, file = "regdata.dta")

# Load the .dta file we just saved 
# (this was not necessary because it was still in the workspace)
load("regdata.dta")

# Display the X-values
regdata$X

# Produce descriptive statistics
mean(X)
sd(X)
cov(X,Y)
cor(X,Y)
summary(X)

# What do the simulated data look like?
plot(X,Y) # a scatter plot of the X and Y observations
hist(E, n = 10, prob = T, xlim = c(-3,3)) # a histogram of the error terms
abline(v = mean(E), col = 'blue', lwd = 2) # add a vertical line at the sample mean
lines(density(E), col = 'red', lwd = 2) # add an estimated density

# Perform a linear regression of Y on X, include a constant, save to object 'fit'
fit <- lm(Y ~ X, data = regdata)

# Show a summary of the regression results
summary(fit)

# Extract the estimates from the fit object
fit$coefficients # method 1
coefficients(fit) # method 2
summary(fit)$coefficients[,1] # method 3

# Extract the standard errors from the fit object
summary(fit)$coefficients[,2]

# Extract t-statistics and p-values from the fit object
summary(fit)$coefficients[,3]
summary(fit)$coefficients[,4]

# Return the fitted values (y_hat)
fitted(fit)

# Return residuals
residuals(fit)

# Plot the simulated values, the function y=a+bX, and the fitted function
plot(X, Y, xlim = c(0,7), ylim = c(0,7))
abline(fit, col = 'red')
abline(a, b, col = 'blue')
legend('topright', c("True","Fitted"), lty=c(1,1), lwd=c(2.5,2.5), col=c("blue","red"))

# Use the xtable package to produce LaTeX code for a summary of the estimation results
install.packages("xtable")
library("xtable")
xtable(fit)

# Use stargazer to produce LaTeX code for a summary of the estimation results
install.packages("stargazer")
library("stargazer")
stargazer(fit)

# Multiple regression
Z <- rnorm(N,2,1)
regdata$Z <- Z
fit2 <- lm(Y ~ X + Z, data = regdata)
stargazer(fit,fit2)