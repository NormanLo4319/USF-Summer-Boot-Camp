**************** Begin Code ******************

clear all
set more off

// Import Data from existing files (CSV and Excel)
insheet using "C:/Users/lokma/Desktop/USF/2019_Summer_Boot_Camp/data/donors2008.csv", clear

// Other version use import delimited " ... "

// Summarize the data
sum(amount)

// Table of summary statistics
tabulate(amount)

clear all
set more off

// Import General Height and WBA Height Data
insheet using "C:/Users/lokma/Desktop/USF/2019_Summer_Boot_Camp/data/general_heights.csv"
insheet using "C:/Users/lokma/Desktop/USF/2019_Summer_Boot_Camp/data/wba_heights.csv"

// Note that Stata cannot read two different data sets at the same time

// t-Test on Stata
ttest general_height == wba_height

// Import health env Data
insheet using "C:/Users/lokma/Desktop/USF/2019_Summer_Boot_Camp/data/food_env_data.csv"

// Correlation Matrix
cor percentdiabetes percentobesity

// Linear Regression 
reg percentdiabetes percentobesity

// Graphing the scatter plot and fitted line
graph twoway (scatter percentdiabetes percentobesity) (lfitci percentdiabetes percentobesity)


