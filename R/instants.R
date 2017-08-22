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
