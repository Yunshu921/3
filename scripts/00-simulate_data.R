#### Preamble ####
# Purpose: Simulate two datasets of causes of death negative binomial distributed and Poisson distributed.
# Author: Yunshu Zhang
# Date: 2024 March 13
# Contact: yunshu.zhang@mail.utoronto.ca


#### Workspace setup ####
install.packages("tidyverse")
library(tidyverse)
set.seed(302)

#### Simulate data ####
## Simulate a dataset with causes of death has the negative binomial distribution.
## This dataset contains the number of deaths for three high-rank causes of death from 2020 to 2022. 
## They are "Dementia" for organic dementia, "Respiratory cancers" for malignant neoplasms of trachea, bronchus and lung,
## and "Chronic heart condition" for all other forms of chronic ischemic heart disease.

alberta_causes_death_simulated_nbino <-
  tibble( Year = rep(x = 2020:2022, times = 10),
          Cause = rep(x = c("Chronic heart condition", "Respiratory cancers", "Dementia"), times = 10),
          Deaths = rnbinom(n = 30, size = 200, prob = 0.1)
  ) 


 alberta_causes_death_simulated_nbino   
 
 ## Simulate a dataset with causes of death has the poisson distribution.
 ## This dataset contains the number of deaths for three high-rank causes of death from 2020 to 2022. 
 ## They are "Dementia" for organic dementia, "Respiratory cancers" for malignant neoplasms of trachea, bronchus and lung,
 ## and "Chronic heart condition" for all other forms of chronic ischemic heart disease.

 alberta_causes_death_simulated_poiss <-
   tibble( Year = rep(x = 2020:2022, times = 10),
           Cause = rep(x = c("Chronic heart condition", "Respiratory cancers", "Dementia"), times = 10),
           Deaths = rpois(n = 30, lambda = 1850)
   ) 
 
 
 alberta_causes_death_simulated_poiss  
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          