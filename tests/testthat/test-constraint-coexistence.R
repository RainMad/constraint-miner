library(testthat)
library(shinytest)
library(dplyr)

context("test constraint 'coexistence'")

test_that("Constratint 'coexistence' works", {
  
  activity1 = "A"
  activity2 = "B"
  
  result <- coexistence(eventlog, activity1, activity2)
  
  expect_true(filter_result(result, Trace1))
  expect_true(filter_result(result, Trace2))
  expect_false(filter_result(result, Trace3))
  expect_false(filter_result(result, Trace4))
  expect_false(filter_result(result, Trace5))
  expect_true(filter_result(result, Trace6))
  expect_false(filter_result(result, Trace7))
  expect_true(filter_result(result, Trace8))
  expect_true(filter_result(result, Trace9))
  expect_true(filter_result(result, Trace10))
})