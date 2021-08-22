# EDA
Explanatory Data Analysis
After you have acquired the data, you should do the following:

Diagnose data quality.
If there is a problem with data quality,
The data must be corrected or re-acquired.
Explore data to understand the data and find scenarios for performing the analysis.
Derive new variables or perform variable transformations.
The dlookr package makes these steps fast and easy:

Performs an data diagnosis or automatically generates a data diagnosis report.
Discover data in a variety of ways, and automatically generate EDA(exploratory data analysis) report.
Impute missing values and outliers, resolve skewed data, and categorize continuous variables into categorical variables. And generates an automated report to support it.
This document introduces EDA(Exploratory Data Analysis) methods provided by the dlookr package. You will learn how to EDA of tbl_df data that inherits from data.frame and data.frame with functions provided by dlookr.

dlookr increases synergy with dplyr. Particularly in data exploration and data wrangle, it increases the efficiency of the tidyverse package group.
