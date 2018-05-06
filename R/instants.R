#' The previous day
#'
#' @export yesterday
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the previous date as a Date object
#'
#' @seealso \code{\link{tomorrow}}
#'
#' @examples
#' yesterday()
#' yesterday("UTC")
yesterday <- function(tzone = "") {
  as_date(now(tzone = tzone) - days(1))
}

#' The next day
#'
#' @export tomorrow
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the previous date as a Date object
#'
#' @seealso \code{\link{yesterday}}
#'
#' @examples
#' tomorrow()
#' tomorrow("UTC")
tomorrow <- function(tzone = "") {
  as_date(now(tzone = tzone) + days(1))
}

#' The date x days ago
#'
#' @export days_ago
#' @param days an integer specifying the number of days to subtract from the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the date, x days ago
#'
#' @examples
#' days_ago(3)
#' days_ago(1) == yesterday()
days_ago <- function(days = 0, tzone = "") {
  as_date(today(tzone = tzone) - days(x = days))
}

#' The date x days hence
#'
#' @export days_hence
#' @param days an integer specifying the number of days to add from the current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the date, x days hence
#'
#' @examples
#' days_hence(3)
#' days_hence(1) == tomorrow()
days_hence <- function(days = 0, tzone = "") {
  as_date(today(tzone = tzone) + days(x = days))
}

#' The current month
#'
#' @export this_month
#' @param tzone a character vector specifying which time zone you would like to
#'   find the current month of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the current month as a Date object
this_month <- function(tzone = "") {
  floor_date(x = today(tzone = tzone), unit = "month")
}

#' The previous month
#'
#' @export last_month
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous month of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the previous month as a Date object
last_month <- function(tzone = "") {
  floor_date(x = today(tzone = tzone), unit = "month") - months(1)
}

#' The next month
#'
#' @export next_month
#' @param tzone a character vector specifying which time zone you would like to
#'   find the next month of. tzone defaults to the system time zone set on your
#'   computer.
#' @return the next month as a Date object
next_month <- function(tzone = "") {
  floor_date(x = today(tzone = tzone), unit = "month") + months(1)
}

#' The current week
#'
#' @export this_week
#' @param tzone a character vector specifying which time zone you would like to
#'   find the current week of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the current week as a Date object
this_week <- function(tzone = "") {
  floor_date(x = today(tzone = tzone), unit = "week")
}

#' The previous week
#'
#' @export last_week
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous week of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the previous week as a Date object
last_week <- function(tzone = "") {
  floor_date(x = today(tzone = tzone), unit = "week") - weeks(1)
}

#' The next week
#'
#' @export next_week
#' @param tzone a character vector specifying which time zone you would like to
#'   find the next week of. tzone defaults to the system time zone set on your
#'   computer.
#' @return the next month as a Date object
next_week <- function(tzone = "") {
  floor_date(x = today(tzone = tzone), unit = "week") + weeks(1)
}

#' Is x a weekend?
#'
#' @export is.weekend
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return boolean indicating whether x is a weekend
#'
#' @examples
#' is.weekend("2017-08-29")  # FALSE
#' is.weekend("2017-09-02")  # TRUE
is.weekend <- function(x) {
  wday(x = as_date(x), label = FALSE, abbr = FALSE) %in% c(1, 7)
}

#' Is x a weekday?
#'
#' @export is.weekday
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return boolean indicating whether x is a weekday
#'
#' @examples
#' is.weekend("2017-08-29")  # FALSE
#' is.weekend("2017-09-02")  # TRUE
is.weekday <- function(x) {
  wday(x = as_date(x), label = FALSE, abbr = FALSE) %in% 2:6
}

#' Extract time-of-day values
#'
#' @export hms
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return hms object
#' @examples
#' hms("2017-10-22 15:01:00")
hms <- function(x) {
  hms::as.hms(strftime(x, format = "%H:%M:%S"))
}
