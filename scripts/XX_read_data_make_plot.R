

# Read my data and make plots
library(ggplot2)
library(dplyr)

#dat <- read.csv("rawData/dat25_subplot_recode.csv")

dat <-read.csv("../rawData/dat25_subplot_recode.csv")

# scripts
#dat <- read.csv("../rawData/dat25_subplot_recode.csv")


summary(dat)
View(dat)

p_box <- dat %>% 
  filter(hgt_est < 2) %>% 
  ggplot(aes(hgt_est)) +
  geom_boxplot()


p_box


p_box2 <- p_box

p_box3 <- p_box2


ggsave('outFigs/p_box.png',
       p_box)
