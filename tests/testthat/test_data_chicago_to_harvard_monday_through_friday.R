context("Chicago to Harvard M-F Data")
library(commuter)

test_that("data set is a data frame", {
  expect_is(chicago_to_harvard_monday_through_friday, "data.frame")
})

test_that("table has all and only expected fields", {
  expect_equal(names(chicago_to_harvard_monday_through_friday), c("train_number", "Ogilvie", "Arlington Heights"))
})

test_that("train number is a character string", {
  expect_is(chicago_to_harvard_monday_through_friday$train_number, "character")
})

test_that("time entries are in hours-minutes-seconds", {
  expect_is(chicago_to_harvard_monday_through_friday$`Arlington Heights`, "hms")
  expect_is(chicago_to_harvard_monday_through_friday$Ogilvie, "hms")
})
