# calculate the correlation coefficient of all combinations
# of carseats numerical variables
correlate(carseats)

# performs a normality test only on combinations 
# that include several selected variables
# Select columns by name
correlate(carseats, Sales, CompPrice, Income)

# Select all columns between year and day (include)
correlate(carseats, Sales:Income)

# Select all columns except those from year to day (exclude)
correlate(carseats, -(Sales:Income))


# uses filter() to get the correlation coefficient 
# for a pair of variable combinations:

carseats %>%
  correlate(Sales:Income) %>%
  filter(as.integer(var1) > as.integer(var2))


carseats %>%
  filter(ShelveLoc == "Good") %>%
  group_by(Urban, US) %>%
  correlate(Sales) %>%
  filter(abs(coef_corr) > 0.5)
