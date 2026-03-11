

# Read my data and make plots
library(ggplot2)
library(dplyr)

dat <- read.csv("rawData/dat25_subplot_recode.csv")

summary(dat)
View(dat)

dat %>% 
  filter(hgt_est < 2) %>% 
  ggplot(aes(hgt_est)) +
  geom_boxplot()
