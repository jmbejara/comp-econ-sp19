The Monte Carlo Method
======================

 - At the beginning of this lecture, we will talk a little about how to use LaTeX.
 - We will then go over [Monte Carlo methods](https://en.wikipedia.org/wiki/Monte_Carlo_method). In particular, we will run a Monte Carlo experiment to 
 test the properties of our estimators.

# Monte Carlo Method Lecture

In our discussion of Monte Carlo methods, we will do the following. This is done in `Monte_Carlo_Demo.ipynb`.

  - Discuss ommited variable bias
  - We will write code to generate fake data from a linear model.
  - We will then discuss how to estimate OLS using Python and R.
  - Discuss how to read documentation in Python (`statsmodels` and `linearmodels`) and R (standard documentation on CRAN).
      - https://www.statsmodels.org/stable/index.html
      - https://bashtage.github.io/linearmodels/doc/
      - https://cran.r-project.org/web/packages/AER/index.html
      - https://www.rdocumentation.org/packages/AER/versions/1.2-5/topics/ivreg
      - https://www.rdocumentation.org/packages/AER/versions/1.2-5
      - https://cran.r-project.org/web/packages/plm/index.html
  - We will show how ommiting a relevant exogenous variable from the model leads to biased estimates of the other right-hand-side (RHS) variables are correlated with the ommited variable. We will run multiple Monte Carlo experiments to establish this fact.
  - We will determine the size and standard deviation of this bias.
  - Mention [Bootstrapping](https://en.wikipedia.org/wiki/Bootstrapping_(statistics)) (related)

# Misc Linear Models

As a side note at the end, we will talk briefly about instrmental variables and panel data estimation with fixed effects.

  - See `Linear Models -- OLS and IV.ipynb`
  - and `Fixed-and-Random-Effects-Rosetta-Stone.ipynb`


## Fixed/Random Effects Refresher

 - Theory Slides: https://dss.princeton.edu/training/Panel101.pdf
 - Fixed/Random Effects in R tutorial: https://dss.princeton.edu/training/Panel101R.pdf

