#### Preamble ####
# Purpose: Clean the data, rename variables and save cleaned data.
# Author: Yunshu Zhang
# Date: 2024 March 14
# Contact: yunshu.zhang@mail.utoronto.ca




#### Workspace setup ####

install.packages("janitor")
library(janitor)


#### Clean data ####

## First, we read dataset and skip first two rows to get clean data frame. Then save this new dataset.
deaths_leading_causes_no_context <- 
  read_csv("inputs/data/deaths-leading-causes.csv",
           skip = 2)
  
write_csv(deaths_leading_causes_no_context, here::here("inputs/data/deaths_leading_causes_1.csv"))


## Then we use col_types to specify classes of each column.
deaths_leading_causes_no_context <-
  read_csv("inputs/data/deaths_leading_causes_1.csv",
           col_types = cols(
           "Calendar Year" = col_integer(),
           Cause = col_character(),
           Ranking = col_integer(),
           "Total Deaths" = col_integer()
           ))

## Secondly, we use clean_names() to convert the column names to a statistical style of writing.
deaths_leading_causes_no_context <- 
  clean_names(deaths_leading_causes_no_context)

# Check the column names of the dataframe
colnames(deaths_leading_causes_no_context)

# In addition, we can use add_count() function to number the occurance of each cause of death and use
# str_trunc function to make the data frame clean.
deaths_leading_causes_cleaned <- deaths_leading_causes_no_context |>
  add_count(cause) |>
  mutate(cause = str_trunc(cause, 30))

## Finally, we can save cleaned data.

write_csv(deaths_leading_causes_cleaned, here::here("inputs/data/deaths_leading_causes_cleaned.csv"))
alberta_causes_death <- read_csv(here::here("inputs/data/deaths_leading_causes_cleaned.csv"))













  
  
  