# HW 7

 - Watch [these 4 videos about data wrangling in R](https://www.youtube.com/playlist?list=PL9HYL-VRX0oQOWAFoKHFQAsWAI3ImbNPk). There is no need to report that you completed this. However, it will be helpful for the R section of this assignment.
 - Redo the Chipotle assignment from HW 3. This time do it in R. This is to familiarize yourself with R's "Tidyverse", starting with `readr`, `dplyr`, and `ggplot2`. See the "Chipotle in R" section below for details.
 - Perform a Monte Carlo experiment to demonstrate Instrumental Variables estimation. See the section "Instrumental Variables Monte Carlo" below for details.
 - Complete the Fixed Effects exercises. Do each exercises *in Python and in R.* See the "Fixed Effects Exercises" section below for more details.

**This assignment is due May 23 at 11:59 pm.**

## Chipotle in R

  - Redo the chipotle assignment, this time using R and packages from the "Tidyverse." That is, use `dplyr` and `readr` when you can along with the `%>%` pipe operator.
  - Redo all of the questions. Be sure to clearly label each question number and the corresponding solution.
  - I recommend submitting the code as a `.R` file (e.g. `chipotle.R`). However, you may use R markdown or an R notebook if you wish.

**2 points for each question in the Chipotle exercises**

## Instrumental Variables Monte Carlo

  - This exercise will have you will run a Monte Carlo experiment to demonstrate omitted variable bias and how the instrumental variable procedure can remedy the situation. See `monte-carlo-iv.ipynb` for details.

## Fixed Effects Exercises

Traffic crashes are the leading cause of death for Americans between the ages of 5 and 32. Through various spending policies, the federal government has encourages states to institute mandatory seat belt laws to reduce the number of fatalities and serious injuries. In this exercise you will investigate how effective these laws are in increasing seat belt use and reducing fatailities. The data file "Seatbelts" contains a panel of data from 50 U.S. states plus the District of Columbia for the years 1983 through 1997. A detailed description is given in "Seatbelt_Description". 

**4 points for each question below**

  1. Estimate the effect of seat belt use on fatalities by regressing *FatalityRate* on *sb_useage*, *speed65*, *speed70*, *ba08*, *drinkage21*, ln(*income*), and *age*. Does the estimated regression suggest that increases seat belt use reduces fatalities?

  2. Do the results change when you add state fixed effects? Provide an intuitive explanation for why the results changed.

  3. Do the results change when you add time fixed effects plus state fixed effects?

  4. Which regression specification---(1), (2), or (3)---is the most reliable? Explain why.

**Write code to perform the above regressions once in Python and once in R** 


*Note: This exercises are from Stock and Watson 3rd Edition, chapter 10. The data were provided to the authors of that textbook by Professor Liran Einav of Stanford University and were used in his paper with Alma Cohen, "The Effects of Mandatory Seat Belt Laws on Driving Behavior and Traffic Fatalities," *The Review of Economics and Statistics, 2003.*

## Notes:

  There are some helpful resources about R to be found in the "misc" folder in this repo. Look for ["useful-resources.md"](https://github.com/jmbejara/comp-econ-sp18/blob/master/misc/useful-resources.md)