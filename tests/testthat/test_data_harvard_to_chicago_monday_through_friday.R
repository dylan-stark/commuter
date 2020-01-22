context("Harvard to Chicago M-F Data")
library(commuter)

test_that("data set is a data frame", {
  expect_is(harvard_to_chicago_monday_through_friday, "data.frame")
})

test_that("table has all and only expected fields", {
  expect_equal(names(harvard_to_chicago_monday_through_friday), c("train_number", "Arlington Heights", "Ogilvie"))
})

test_that("train number is a character string", {
  expect_is(harvard_to_chicago_monday_through_friday$train_number, "character")
})

test_that("time entries are in hours-minutes-seconds", {
  expect_is(harvard_to_chicago_monday_through_friday$`Arlington Heights`, "hms")
  expect_is(harvard_to_chicago_monday_through_friday$Ogilvie, "hms")
})
