% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/instants.R
\name{floor_decade}
\alias{floor_decade}
\title{The beginning (floor) of the decade}
\usage{
floor_decade(x)
}
\arguments{
\item{x}{a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
timeDate, xts, its, ti, jul, timeSeries, or fts object.}
}
\value{
the beginning of the decade as a Date object
}
\description{
The beginning (floor) of the decade
}
\examples{
floor_decade("2017-10-22 15:01:00")
}
