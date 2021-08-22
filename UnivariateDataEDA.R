library(psych)
library(testthat)
install.packages("testthat")
install.packages("dplyr")
require(dplyr)
library(dplyr)

library(ISLR)
str(Carseats)

# create the missing values and saved them as carseats.

carseats <- ISLR::Carseats

suppressWarnings(RNGversion("3.5.0"))
set.seed(123)
carseats[sample(seq(NROW(carseats)), 20), "Income"] <- NA

suppressWarnings(RNGversion("3.5.0"))
set.seed(456)
carseats[sample(seq(NROW(carseats)), 10), "Urban"] <- NA

# Univariate data EDA

# compute the statistics of all numerical variables in carseats:
describe(carseats)

# explain the descriptive statistics 
# only for a few selected variables

describe(carseats, Sales, CompPrice, Income)

# describe() function can be sorted by 
# left or right skewed size(skewness) using dplyr.:

carseats %>%
  describe() %>%
  select(variable, skewness, mean, p25, p50, p75) %>% 
  filter(!is.na(skewness)) %>% 
  arrange(desc(abs(skewness)))

# Shapiro-Wilk normality test
normality(carseats)




