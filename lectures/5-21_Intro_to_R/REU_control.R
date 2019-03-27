##==============================================================================
## REU_control.R
## This file contains code used to simulate N y-values according to y = a + b x + e,
## where x~N(3,1) and e~N(0,1), to illustrate the use of a for loop and a while loop.
## BY WINNIE VAN DIJK, CREATED ON 3/20/2015
##==============================================================================


## ILLUSTRATION OF FOR LOOP
N <- 200  # number of simulated values
a <- 2  # intercept
b <- .5  # slope

X <- rnorm(N,3,1)  # simulated x values
E <- rnorm(N,0,1)  # simulated e values

Y <- rep(NA,N)  # define a vector of the correct length before assigning values

for (i in 1:length(X)) {
	Y[i] <- a + X[i] * b + E[i]  # simulated y values
}

# Of course, it would have been better (faster) to write
Y <- a + X * b + E


## ILLUSTRATION OF WHILE LOOP
i <- 1  # initialize the counter
while (i <= length(X)) {
	Y[i] <- a + X[i] * b + E[i]
	i <- i + 1  # update the counter
}
