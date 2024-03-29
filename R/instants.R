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

#' The time x seconds before now
#'
#' @param seconds integer number of seconds
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The datetime, x seconds ago
#' @export seconds_ago
#'
#' @examples
#' seconds_ago(120)
#' seconds_ago(3600)
seconds_ago <- function(seconds = 0, tzone = "") {
  as_datetime(now() - seconds(x = seconds), tz = tzone)
}

#' The time x minutes before now
#'
#' @param minutes integer number of minutes
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The time, x minutes ago
#' @export minutes_ago
#'
#' @examples
#' minutes_ago(1)
#' minutes_ago(60)
minutes_ago <- function(minutes = 0, tzone = "") {
  as_datetime(now() - minutes(x = minutes), tz = tzone)
}

#' the time x hours ago
#'
#' @param hours integer number of hours
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The time, x hours ago
#' @export hours_ago
#'
#' @examples
#' hours_ago(1)
#' hours_ago(24)
hours_ago <- function(hours = 0, tzone = "") {
  as_datetime(now() - hours(x = hours), tz = tzone)
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

#' The date x weeks ago
#'
#' @param weeks an integer specifying the number of weeks to subtract from the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return the date, x weeks ago
#' @export weeks_ago
#'
#' @examples
#' weeks_ago(1)
#' weeks_ago(52)
weeks_ago <- function(weeks = 0, tzone = "") {
  as_date(today(tzone = tzone) - weeks(x = weeks))
}


#' The date x months ago
#'
#' @param months an integer specifying th enumber of weeks to subtract from the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return the date, x months ago
#' @export months_ago
#'
#' @examples
#' months_ago(1)
#' months_ago(12)
months_ago <- function(months = 0, tzone = "") {
  as_date(today(tzone = tzone) - months(x = months))
}

#' The date x years ago
#'
#' @param years an integer specifying the number of days to subtract from the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The date, x years ago
#' @export years_ago
#'
#' @examples
#' years_ago(1)
#' years_ago(2000)
years_ago <- function(years = 0, tzone = "") {
  as_date(today(tzone = tzone) - years(x = years))
}

#' The date x decades ago
#'
#' @param decades an integer specifying the number of decades to subtract
#'   from the current date
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The date, x decades ago
#' @export decades_ago
#'
#' @examples
#' decades_ago(1)
#' decades_ago(2000)
decades_ago <- function(decades = 0, tzone = "") {
  as_date(today(tzone = tzone) - years(x = decades * 10))
}

#' The time x seconds before now
#'
#' @param seconds integer number of seconds
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The datetime, x seconds from now
#' @export seconds_hence
#'
#' @examples
#' seconds_hence(60)
#' seconds_hence(3600)
seconds_hence <- function(seconds = 0, tzone = "") {
  as_datetime(now() + seconds(x = seconds), tz = tzone)
}

#' The time x minutes before now
#'
#' @param minutes integer number of minutes
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The date time, x minutes from now
#' @export minutes_hence
#'
#' @examples
#' minutes_hence(60)
#' minutes_hence(2440)
minutes_hence <- function(minutes = 0, tzone = "") {
  as_datetime(now() + minutes(x = minutes), tz = tzone)
}

#' the time x hours hence
#'
#' @param hours integer number of hours
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The datetime, x hours from now
#' @export hours_hence
#'
#' @examples
#' hours_hence(1)
#' hours_hence(24)
hours_hence <- function(hours = 0, tzone = "") {
  as_datetime(now() + hours(x = hours), tz = tzone)
}
#' The date x days hence
#'
#' @export days_hence
#' @param days an integer specifying the number of days to add from the current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#' @return the datetime, x days from now
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

#' The date x weeks hence
#'
#' @param weeks an integer specifying the number of weeks to add to the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return the date, x weeks from now
#' @export weeks_hence
#'
#' @examples
#' weeks_hence(1)
#' weeks_hence(52)
weeks_hence <- function(weeks = 0, tzone = "") {
  as_date(today(tzone = tzone) + weeks(x = weeks))
}


#' The date x months hence
#'
#' @param months an integer specifying the number of weeks to add to the current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return the date, x months from now
#' @export months_hence
#'
#' @examples
#' months_hence(1)
#' months_hence(12)
months_hence <- function(months = 0, tzone = "") {
  as_date(today(tzone = tzone) + months(x = months))
}

#' The date x years hence
#'
#' @param years an integer specifying the number of days to add to the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The date, x years from now
#' @export years_hence
#'
#' @examples
#' years_hence(1)
#' years_hence(2000)
years_hence <- function(years = 0, tzone = "") {
  as_date(today(tzone = tzone) + years(x = years))
}

#' The date x decades hence
#'
#' @param decades an integer specifying the number of decades to add to the
#'   current
#' @param tzone a character vector specifying which time zone you would like to
#'   find the previous date of. tzone defaults to the system time zone set on
#'   your computer.
#'
#' @return The date, x decades from now
#' @export decades_hence
#'
#' @examples
#' decades_hence(1)
#' decades_hence(2000)
decades_hence <- function(decades = 0, tzone = "") {
  as_date(today(tzone = tzone) + years(x = decades * 10))
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
#' @export is_weekend
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return boolean indicating whether x is a weekend
#'
#' @examples
#' is_weekend("2017-08-29") # FALSE
#' is_weekend("2017-09-02") # TRUE
is_weekend <- function(x) {
  wday(x = as_date(x), label = FALSE, abbr = FALSE) %in% c(1, 7)
}

#' Is x a weekday?
#'
#' @export is_weekday
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return boolean indicating whether x is a weekday
#'
#' @examples
#' is_weekday("2017-08-29") # FALSE
#' is_weekday("2017-09-02") # TRUE
is_weekday <- function(x) {
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
  x <- parse_date_time(x = x, orders = c("ymdTz", "ymdT", "HMS"))
  x <- strftime(x, format = "%H:%M:%S", tz = "GMT")
  lubridate::hms(x)
}

#' The beginning (floor) of the decade
#'
#' @export floor_decade
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return the beginning of the decade as a Date object
#'
#' @examples
#' floor_decade("2017-10-22 15:01:00")
floor_decade <- function(x) {
  x <- parse_date_time(x = x, orders = c("ymd", "ymdTz", "ymdT"))
  x <- floor_date(x, unit = "year")
  beginning <- year(x) - year(x) %% 10
  year(x) <- beginning
  return(x)
}

#' The end (ceiling) of a decade
#'
#' @export ceiling_decade
#' @param x a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
#'   timeDate, xts, its, ti, jul, timeSeries, or fts object.
#' @return the end of the decade as a Date object
#'
#' @examples
#' ceiling_decade("2017-10-22 15:01:00")
ceiling_decade <- function(x) {
  x <- parse_date_time(x = x, orders = c("ymd", "ymdTz", "ymdT"))
  decade_end <- year(x) - (year(x) %% 10) + 10
  year(x) <- decade_end
  x <- floor_date(x, unit = "year") - days(1)
  return(x)
}
