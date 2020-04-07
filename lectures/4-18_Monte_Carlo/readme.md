The Monte Carlo Method
======================

 - Talk about midterm (e.g., format). 
     - I have provided a [midterm prep document in the `misc` folder.](../../misc/midterm_prep.md) 
 - Introduction to Pandas
 - We will then go over [Monte Carlo methods](https://en.wikipedia.org/wiki/Monte_Carlo_method). In particular, we will run a Monte Carlo experiment to test the properties of our estimators.


# Pandas

# Monte Carlo Method Lecture

In our discussion of Monte Carlo methods, we will do the following. This is done in [`Monte_Carlo_Demo.ipynb`](./Monte_Carlo_Demo.ipynb).

  - Discuss the theoretical motivation of Monte Carlo methods (integration, generate distribution)
  - Discuss ommited variable bias
  - We will write code to generate fake data from a linear model.
  - We will then discuss how to estimate OLS and IV regressions using Python
  - Discuss how to read documentation in Python (`statsmodels` and `linearmodels`)
      - https://www.statsmodels.org/stable/index.html
      - https://bashtage.github.io/linearmodels/doc/
  - We will show how ommiting a relevant exogenous variable from the model leads to biased estimates of the other right-hand-side (RHS) variables are correlated with the ommited variable. We will run multiple Monte Carlo experiments to establish this fact.
  - We will determine the size and standard deviation of this bias.
  - Mention [Bootstrapping](https://en.wikipedia.org/wiki/Bootstrapping_(statistics)) (related)




