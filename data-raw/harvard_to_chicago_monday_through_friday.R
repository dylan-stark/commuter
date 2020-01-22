library(readr)
library(hms)
library(dplyr)

raw <- read_csv("data-raw/harvard_to_chicago_monday_through_friday.csv")

harvard_to_chicago_monday_through_friday <- raw %>%
  rename(train_number = train) %>%
  mutate(
    train_number = as.character(train_number)
  )

devtools::use_data(harvard_to_chicago_monday_through_friday, overwrite = TRUE)
