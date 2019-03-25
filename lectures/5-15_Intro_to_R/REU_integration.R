##==============================================================================
## REU_integration.R
## This file contains code used to produce a simulation-based approximation to 
## Pr(a<X<b) for a random variable X~N(0,1), where a=-.5 and b=2.
## BY WINNIE VAN DIJK, CREATED ON 3/20/2015
##==============================================================================

## SETTING THE WORKING DIRECTORY
setwd("C:/Users/Test/Dropbox/Teaching/REU/Code/R")


## CLEARING THE WORKSPACE
rm(list = ls())

# We want to simulate M random (x,y)-pairs on the rectangle [a,b]X[0,1/sqrt(2*pi)]
# The upper bound of the rectangle is chosen equal to the maximum of the 
# function that we want to integrate; we know that the maximum of the Normal 
# distribution is phi(0)=1/sqrt(2*pi).

# Before we do anything, we set up the parameters that we need in the 
# calculation, at the beginning of the file, so that we can easily find and 
# change them later. The parameters are:
# 		- the seed for the random number generator (fixing this makes ensures 
# 			that you get the same pseudo-random numbers next time you run this code)
# 		- M: the number of simulated pairs
# 		- a, b, l, and u: the bounds of rectangle


## SET PARAMETERS
set.seed(1234)  # fix the randomization seed
M <- 10000  # set the number of simulated (x,y)-pairs
a <- -.5  # set the left bound
b <- 2  # set the right bound
l <- 0  # set the lower bound
u <- 1 / sqrt(2 * pi)  # calculate the upper bound

# Now that we've set the parameters of our problem, we can calculate the area 
# of our rectangle and save it in a new object, which we will call area.


## CALCULATE AREA OF THE RECTANGLE
area <- (b - a) * (u - l)  # calculate the area of the rectangle

# We can use the runif() command to generate pseudo-random numbers on the
# intervals that we specified when we set the parameters.


## SIMULATE RANDOM VALUES
x <- runif(M, min = a, max = b)  # simulate random x-values from U[a,b]
y <- runif(M, min = l, max = u)  # simulate random y-values from U[l,u]

# We can use the hist() command to plot a histogram of the simulated y-values:
hist(y)  # create a histogram of the y-values


## CALCULATE FRACTION BELOW THE CURVE
# Now we move on to the actual calculations. First we create a vector with ones 
# in places where the corresponding (x,y)-pair is in the area that we want to 
# calculate:
isBelow <- y < 1/sqrt(2 * pi) * exp(-x ^ 2 / 2)

# We calculate the fraction of times the (x,y)-pair is in the area that we want 
# to calculate and from that calculate our approximation of the integral:
fraction <- sum(isBelow) / M
approximation <- fraction * area
approximation


## PLOTS
# To get some intuition for what just happened, let's plot the (x,y)-pairs that 
# were below the function whose integral we tried to approximate. We use the R 
# command plot() and instruct R to plot the pairs that we have determined 
# to be below the curve in black, and the other pairs in red.
plot(x[isBelow],y[isBelow])
points(x[!isBelow],y[!isBelow],col = 'red')


## CHECK THE RESULT
# Finally, let's check our result by using R's built-in functions for evaluating 
# the Normal CDF:
pnorm(b) - pnorm(a)

# R has a lot of built-in probability functions: pnorm(), dnorm(), rnorm(),
# qnorm(), punif(), dunif(), runif(), qunif(), pexp(), etc. 
# Use the help function to get details on their syntax.