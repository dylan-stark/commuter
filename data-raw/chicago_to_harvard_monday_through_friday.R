library(readr)
library(hms)
library(dplyr)

raw <- read_csv("data-raw/chicago_to_harvard_monday_through_friday.csv")

chicago_to_harvard_monday_through_friday <- raw %>%
  rename(train_number = train) %>%
  mutate(
    train_number = as.character(train_number),
    `Ogilvie` = as.hms((12 * 60 * 60) + `Ogilvie`),
    `Arlington Heights` = as.hms((12 * 60 * 60) + `Arlington Heights`)
  )

devtools::use_data(chicago_to_harvard_monday_through_friday, overwrite = TRUE)
