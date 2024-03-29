% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/instants.R
\name{is_weekend}
\alias{is_weekend}
\title{Is x a weekend?}
\usage{
is_weekend(x)
}
\arguments{
\item{x}{a POSIXct, POSIXlt, Date, chron, yearmon, yearqtr, zoo, zooreg,
timeDate, xts, its, ti, jul, timeSeries, or fts object.}
}
\value{
boolean indicating whether x is a weekend
}
\description{
Is x a weekend?
}
\examples{
is_weekend("2017-08-29") # FALSE
is_weekend("2017-09-02") # TRUE
}
