
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lubridateExtras <img src="man/figures/logo.svg" align="right" height="120" width="139" />

Convenience functions for the lubridate package

<!-- badges: start -->

[![R build
status](https://github.com/ellisvalentiner/lubridateExtras/workflows/R-CMD-check/badge.svg)](https://github.com/ellisvalentiner/lubridateExtras/actions)
[![Coverage](%5B!%5Bcodecov%5D(https://codecov.io/gh/ellisvalentiner/lubridateExtras/branch/main/graph/badge.svg?token=G4DGE1C5dG)%5D(https://codecov.io/gh/ellisvalentiner/lubridateExtras))](https://app.codecov.io/gh/ellisvalentiner/lubridateExtras/)
<!-- badges: end -->

## Overview

Lubridate makes it easier to work with date-time data in R and provides
new capabilities. LubridateExtras builds on top of lubridate to provide
a number of convenience functions, primarily focused on abstracting
patterns in ways that improve code readability and reduce copying and
pasting code.

## Installation

``` r
# lubridateExtras is not currently on CRAN
# Please install the development version from GitHub:
# install.packages("devtools")
devtools::install_github("ellisvalentiner/lubridateExtras")
```

If you encounter a clear bug, please file a minimal reproducible example
on [github](https://github.com/ellisvalentiner/lubridateExtras/issues).

## Usage

``` r
library(lubridateExtras)

yesterday()
#> [1] "2022-01-23"

tomorrow()
#> [1] "2022-01-25"

days_ago(7)  # equivalent to lubridate::today() - lubridate::days(7)
#> [1] "2022-01-17"

days_hence(7)  # equivalent to lubridate::today() + lubridate::days(7)
#> [1] "2022-01-31"

hms("2017-10-22 15:33:00")  # extracts the time-of-day component
#> [1] "15H 33M 0S"
```
