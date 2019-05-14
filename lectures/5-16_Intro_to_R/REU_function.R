##==============================================================================
## REU_function.R
## This file contains code used to define a function NumInt that can be used to 
## approximate Pr(a<X<b) for a random variable X~N(0,1), for arbitrary a<b.
## BY WINNIE VAN DIJK, CREATED ON 3/20/2015
##==============================================================================


NumInt <- function(M, a, b) {
	
	# Computes an approximation to Pr(a<X<b), where X is standard Normally distributed.
	# INPUT:  M, the number of simulated (x,y)-pairs, integer
	#         a, left bound, double
	#         b, right bound, double
	# OUTPUT: approximation, double
	
	# Error handling
	if (a > b) { 
		print('Error: need a < b')
		return()
	}
	
	# Set parameters
	l <- 0  # set the lower bound
	u <- 1 / sqrt(2 * pi)  # calculate the upper bound
	area <- (b - a) * (u - l)  # calculate the area of the rectangle
	
	# Simulation
	x <- runif(M, min = a, max = b)  # simulate random x-values from U[a,b]
	y <- runif(M, min = l, max = u)  # simulate random y-values from U[l,u]
	
	# Approximation
	isBelow <- y < 1/sqrt(2*pi) * exp(-x^2/2)
	fraction <- sum(isBelow)/(M)
	approximation <- fraction * area
	
	# Have the function return the final result
	return(approximation)
}


# Let's check to see if the function works correctly:
NumInt(M = 10000, a = -.5, b = 2)
NumInt(M = 10000, a = 2, b = -.5)