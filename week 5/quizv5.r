# load dataset
library(readr)
library(ggplot2)
mydata = read.csv("C:/Users/jvicm/Desktop/New folder/QuizzesV1/Quiz3/university_rank2.csv")

# stacked bar chart

summary(mydata)
names(mydata)
head(mydata)

library(ggplot2)

# plot experience vs. salary
ggplot(mydata,
       aes(x = PRED_GRAD_RATE,
           y = V_DISPLAY_SCORE,
           color=IS_RANKED)) +
  geom_point() +
  labs(title = "Predicted graduation rate by the display score")
