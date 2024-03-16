#### Preamble ####
# Purpose: Test for the validity of dataset
# Author: Yunshu Zhang
# Date: 2024 March 14
# Contact: yunshu.zhang@mail.utoronto.ca
# Pre-requisites: Need to finish cleaning script, then test the cleaned dataset

#### Workspace setup ####
library(tidyverse)

#### Test data ####

# Test 1: Check the class and number of observations are as expected
stopifnot(
  class(alberta_causes_death$ranking) == "numeric",
  class(alberta_causes_death$n) == "numeric",
  class(alberta_causes_death$total_deaths) == "numeric",
  class(alberta_causes_death$cause) == "character",
  nrow(alberta_causes_death) == 663
)

# Test 2: Check if the calendar year is from 2001 to 2022
alberta_causes_death$calendar_year |> min(na.rm = TRUE) >= 2001
alberta_causes_death$calendar_year |> max(na.rm = TRUE) <= 2022


# Test 3: Check if the range of n is from 1 to 22
alberta_causes_death$n |> min(na.rm = TRUE) >= 1
alberta_causes_death$n |> max(na.rm = TRUE) <= 22

