library(lubridateExtras)
context("Instances Functions")

test_that("yesterday", {
  expect_equal(yesterday(), Sys.Date() - 1)
})

test_that("tomorrow", {
  expect_equal(tomorrow(), Sys.Date() + 1)
})

test_that("days_ago", {
  expect_equal(days_ago(0), Sys.Date())
  expect_equal(days_ago(1), yesterday())
  expect_equal(days_ago(2), Sys.Date() - 2)
  expect_equal(days_ago(7), Sys.Date() - 7)
  expect_equal(days_ago(-1), tomorrow())
})

test_that("days_hence", {
  expect_equal(days_hence(0), Sys.Date())
  expect_equal(days_hence(1), tomorrow())
  expect_equal(days_hence(2), Sys.Date() + 2)
  expect_equal(days_hence(7), Sys.Date() + 7)
  expect_equal(days_hence(-1), yesterday())
})

test_that("this_month", {
  expect_equal(this_month(), as.Date(strftime(Sys.Date(), format = "%Y-%m-01")))
})

test_that("last_month", {
  expect_equal(last_month(), this_month() - months(1))
})

test_that("next_month", {
  expect_equal(next_month(), this_month() + months(1))
})

test_that("this_week", {
  expect_equal(this_week(), floor_date(today(), unit = "week"))
})

test_that("last_week", {
  expect_equal(last_week(), this_week() - weeks(1))
})

test_that("next_week", {
  expect_equal(next_week(), this_week() + weeks(1))
})

test_that("is.weekday", {
  expect_equal(is.weekday("2017-10-23"), TRUE)
  expect_equal(is.weekday("2017-10-22"), FALSE)
})

test_that("is.weekend", {
  expect_equal(is.weekend("2017-10-23"), FALSE)
  expect_equal(is.weekend("2017-10-22"), TRUE)
})

test_that("hms", {
  expect_equal(
    hms("2017-10-22 15:01:00"),
    lubridate::hms("15:01:00")
  )
  expect_equal(
    hms("2017-10-22 16:06:59"),
    lubridate::hms("16:06:59")
  )
})
