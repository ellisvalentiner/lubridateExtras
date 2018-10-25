#' Round, floor and ceiling methods for hms objects
#'
#' @description
#' Rounding to the nearest unit or multiple of a unit are supported. All
#' meaningful specifications in English language are supported - secs, min,
#' mins, 2 minutes, etc.
#'
#' Rounding to fractional seconds is supported. Please note that rounding to
#' fractions smaller than 1s can lead to large precision errors due to the
#' floating point representation of the POSIXct objects. See examples.
#'
#' `round_date()` takes a hms object and rounds it to the nearest value
#' of the specified time unit. For rounding hms which is exactly halfway
#' between two consecutive units, the convention is to round up. Note that this
#' is in line with the behavior of R's [base::round.POSIXt()] function
#' but does not follow the convention of the base [base::round()] function
#' which "rounds to the even digit" per IEC 60559.
#'
#' @rdname round_hms
#' @param x a vector of date-time objects
#' @param unit a character string specifying a time unit or a multiple of a unit
#'   to be rounded to. Valid base units are `second`, `minute`, and `hour`.
#'   Arbitrary unique English abbreviations as in the [period()]
#'   constructor are allowed. Rounding to multiple of units is supported.
#' @keywords manip chron
#' @seealso [base::round(), lubridate::round_date(), lubridate::floor_date(), lubridate::ceiling_date()]
#' @examples
#'
#' ## print fractional seconds
#' options(digits.secs=6)
#'
#' x <- lubridate::hms("12:01:59.23")
#' round_hms(x, ".5s")
#' round_hms(x, "sec")
#' round_hms(x, "second")
#' round_hms(x, "minute")
#' round_hms(x, "5 mins")
#' round_hms(x, "hour")
#' round_hms(x, "2 hours")
#'
#' x <- lubridate::hms("12:01:59.23")
#' floor_hms(x, "12s")
#' floor_hms(x, "second")
#' floor_hms(x, "minute")
#' floor_hms(x, "hour")
#'
#' x <- lubridate::hms("12:01:59.23")
#' ceiling_hms(x, "15 sec")
#' ceiling_hms(x, "second")
#' ceiling_hms(x, "minute")
#' ceiling_hms(x, "5 mins")
#' ceiling_hms(x, "hour")
#'
#' @export
round_hms <- function(x, unit = "second") {
  if (!length(x)) return(x)
  x <- lubridate::hms(x)
  x <- as.POSIXlt(x, origin = "1970-01-01T00:00:00", tz = "GMT")
  x <- round_date(x, unit = unit)
  lubridateExtras::hms(x)
}

#' @description
#' `floor_hms()` takes a hms object and rounds it down to the nearest
#' boundary of the specified time unit.
#' @rdname round_hms
#' @export
floor_hms <- function(x, unit = "seconds") {
  if (!length(x)) return(x)
  x <- lubridate::hms(x)
  x <- as.POSIXlt(x, origin = "1970-01-01T00:00:00", tz = "GMT")
  x <- floor_date(x, unit = unit)
  lubridateExtras::hms(x)
}
#' @description
#' `ceiling_hms()` takes a hms object and rounds it up to the nearest
#' boundary of the specified time unit.
#' @rdname round_hms
#' @export
#' @examples
#' x <- hms("12:01:59.23")
#' ceiling_hms(x, "10 seconds")
ceiling_hms <- function(x, unit = "seconds") {
  if (!length(x)) return(x)
  x <- lubridate::hms(x)
  x <- as.POSIXlt(x, origin = "1970-01-01T00:00:00", tz = "GMT")
  x <- ceiling_date(x, unit = unit)
  lubridateExtras::hms(x)
}
