#' The previous day
#'
#' @export yesterday
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on your
#'   computer.
#' @return the previous date as a Date object
#'
#' @examples
#' yesterday()
#' yesterday("GMT")
yesterday <- function(tzone = "") {
  as_date(now(tzone) - days(1))
}

#' The next day
#'
#' @export tomorrow
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on your
#'   computer.
#' @return the previous date as a Date object
#'
#' @examples
#' tomorrow()
#' tomorrow("GMT")
tomorrow <- function(tzone = "") {
  as_date(now(tzone) + days(1))
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
  wday(x = as_date(x), label = TRUE, abbr = FALSE) %in% c("Saturday", "Sunday")
}

