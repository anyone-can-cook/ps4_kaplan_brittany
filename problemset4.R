library(tidyverse)
mrc <- read.csv(download.file(url = 'http://www.equality-of-opportunity.org/data/college/mrc_table2.csv', 
                destfile = ("." , "data")))mrc_pivot<- mrc_subset %>% 
  pivot_longer(cols = 'par_q1':'par_q5',
               names_to = 'quantile',
               values_to = 'fraction')
