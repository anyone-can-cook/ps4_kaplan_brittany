library(tidyverse)
mrc <- read_csv(file = 'http://www.equality-of-opportunity.org/data/college/mrc_table2.csv')
mrc_subset <- subset(mrc, select = c(name, par_q1, par_q2, par_q3, par_q4, par_q5))
mrc_pivot<- mrc_subset %>% 
  pivot_longer(cols = 'par_q1':'par_q5',
               names_to = 'quantile',
               values_to = 'fraction')
#My guilty pleasure is eating gummy worms
