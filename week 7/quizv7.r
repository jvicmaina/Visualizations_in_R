#Using the sarotagaHouses dataset to plotfor correlations 

data(SaratogaHouses, package="mosaicData")
# select numeric variables
df <- dplyr::select_if(SaratogaHouses, is.numeric)
# calulate the correlations
r <- cor(df, use="complete.obs")
round(r,2)
library(ggplot2)
library(ggcorrplot)
library(readr)

ggcorrplot(r)
