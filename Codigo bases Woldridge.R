install.packages("wooldridge")
library(wooldridge)
install.packages("openxlsx")
library(openxlsx)

data("bwght")
bwght
dataframe <- (bwght)
dataframe
write.xlsx(dataframe , "bwght.xlsx")


