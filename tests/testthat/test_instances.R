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

test_that("days_agreement", {
  expect_equal(days_ago(1), days_hence(-1))
  expect_equal(days_ago(-1), days_hence(1))
  expect_equal(days_ago(1), as_date(hours_ago(24)))
  expect_equal(days_ago(365), years_ago(1),
    tolerance = if (leap_year(today()) || leap_year(years_ago(1))) days(1)
  )
})

test_that("weeks", {
  expect_equal(weeks_ago(1), days_ago(7))
  expect_equal(weeks_ago(-1), weeks_hence(1))
  expect_equal(weeks_hence(1), days_hence(7))
  expect_equal(wday(weeks_ago(1)), wday(now()))
  expect_equal(wday(weeks_ago(52)), wday(now()))
})

test_that("months", {
  expect_equal(months_ago(1), months_hence(-1))
  expect_equal(months_ago(-1), months_hence(1))
  expect_equal(day(months_ago(1)), day(today()))
  expect_equal(day(months_ago(-1)), day(today()))
  expect_equal(months_ago(12), years_ago(1))
  expect_equal(months_hence(12), years_hence(1))
})

test_that("years", {
  expect_equal(day(years_ago(1)), day(today()))
  expect_equal(week(years_ago(1)), week(today()))
  expect_equal(month(years_ago(1)), month(today()))
  expect_equal(day(years_hence(1)), day(today()))
  expect_equal(week(years_hence(1)), week(today()))
  expect_equal(month(years_hence(1)), month(today()))
})

test_that("decades", {
  expect_equal(day(decades_ago(1)), day(today()))
  expect_equal(week(decades_ago(1)), week(today()))
  expect_equal(month(decades_ago(1)), month(today()))
  expect_equal(day(decades_hence(1)), day(today()))
  expect_equal(week(decades_hence(1)), week(today()))
  expect_equal(month(decades_hence(1)), month(today()))
})

test_that("hours", {
  expect_equal(hour(hours_ago(1)), hour(hours_hence(-1)))
  expect_equal(hour(hours_ago(-1)), hour(hours_hence(1)))

  expect_equal(minute(hours_ago(1)), minute(hours_hence(-1)))
  expect_equal(minute(hours_ago(-1)), minute(hours_hence(1)))

  expect_equal(as_date(hours_ago(24)), days_ago(1))
  expect_equal(as_date(hours_hence(24)), days_hence(1))

  expect_equal(as_date(hours_ago(7 * 24)), weeks_ago(1))
  expect_equal(as_date(hours_hence(7 * 24)), weeks_hence(1))
})

test_that("minutes", {
  expect_equal(minute(minutes_ago(1)), minute(minutes_hence(-1)))
  expect_equal(minute(minutes_ago(-1)), minute(minutes_hence(1)))

  expect_equal(hour(minutes_ago(60)), hour(hours_ago(1)))
  expect_equal(day(minutes_ago(60 * 24)), day(days_ago(1)))
  expect_equal(day(minutes_ago(60 * 24 * 7)), day(weeks_ago(1)))
})

test_that("seconds", {
  expect_equal(minute(seconds_ago(60)), minute(seconds_hence(-60)))
  expect_equal(minute(seconds_ago(60)), minute(minutes_ago(1)))
  expect_equal(hour(seconds_ago(60 * 60)), hour(hours_ago(1)))
  expect_equal(day(seconds_ago(24 * 60 * 60)), day(days_ago(1)))
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

test_that("is_weekday", {
  expect_equal(is_weekday("2017-10-23"), TRUE)
  expect_equal(is_weekday("2017-10-22"), FALSE)
})

test_that("is_weekend", {
  expect_equal(is_weekend("2017-10-23"), FALSE)
  expect_equal(is_weekend("2017-10-22"), TRUE)
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

test_that("floor_decade and ceiling_decade", {
  expect_equal(day(floor_decade(now())), day("2020-01-01"))
  expect_equal(month(floor_decade(now())), month("2020-01-01"))
  expect_equal(year(floor_decade(now())), year("2020-01-01"))

  expect_equal(day(floor_decade(today())), day("2020-01-01"))
  expect_equal(month(floor_decade(today())), month("2020-01-01"))
  expect_equal(year(floor_decade(today())), year("2020-01-01"))

  expect_equal(day(ceiling_decade(now())), day("2029-12-31"))
  expect_equal(month(ceiling_decade(now())), month("2029-12-31"))
  expect_equal(year(ceiling_decade(now())), year("2029-12-31"))

  expect_equal(day(ceiling_decade(today())), day("2029-12-31"))
  expect_equal(month(ceiling_decade(today())), month("2029-12-31"))
  expect_equal(year(ceiling_decade(today())), year("2029-12-31"))
})
