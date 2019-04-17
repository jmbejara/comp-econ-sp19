//This accompanies an ipython notebook with corresponding Python code:
// OLS and Fixed-Random Coefficients.ipynb

//Stata Textbook Examples
//Econometric Analysis of Cross Section and Panel Data by Jeffrey M. Wooldridge
//Chapter 10: Basic Linear Unobserved Effects Panel Data Models

//See this website: 
// http://www.ats.ucla.edu/stat/stata/examples/eacspd/chapter10.htm

use http://www.stata.com/data/jwooldridge/eacsap/jtrain1, clear

//Random Effects
// Example 10.4 on page 261 using jtrain1.dta.
xtreg lscrap d88 d89 union grant grant_1, i( fcode)
test grant grant_1


//Fixed Effects
xtreg lscrap d88 d89 union grant grant_1, i( fcode) fe
test grant grant_1
