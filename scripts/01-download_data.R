#### Preamble ####
# Purpose: Download data from open data from the government of Alberta and then save it.
# Author: Yunshu Zhang
# Date: 2024 March 14
# Contact: yunshu.zhang@mail.utoronto.ca

#### Workspace setup ####
install.packages("here")
library(tidyverse)
library(here)


#### Download data ####
# The dataset can be freely downloaded at
# https://open.alberta.ca/dataset/03339dc5-fb51-4552-97c7-853688fc428d/resource/3e241965-fee3-400e-9652-07cfbf0c0bda/download/deaths-leading-causes.csv


### Save data ###

alberta_causes_death <- read_csv(here::here("inputs/data/deaths-leading-causes.csv"))
                                 
                                 