
<!-- README.md is generated from README.Rmd. Please edit that file -->
lubridateExtras <img src="man/figures/logo.svg" align="right" height="120" width="139" />
=========================================================================================

Convenience functions for the lubridate package

<!-- Placeholder for build status, CRAN status, and coverage status -->
Overview
--------

Lubridate makes it easier to work with date-time data in R and provides new capabilities. LubridateExtras builds on top of lubridate to provide a number of convenience functions, primarily focused on abstracting patterns in ways that improve code readability and reduce copying and pasting code.

Installation
------------

``` r
# lubridateExtras is not currently on CRAN
# Please install the development version from GitHub:
# install.packages("devtools")
devtools::install_github("ellisvalentiner/lubridateExtras")
```

If you encounter a clear bug, please file a minimal reproducible example on [github](https://github.com/ellisvalentiner/lubridateExtras/issues).

Usage
-----

``` r
library(lubridateExtras)

yesterday()
#> [1] "2017-10-11"

tomorrow()
#> [1] "2017-10-13"

days_ago(7)  # equivalent to lubridate::today() - lubridate::days(7)
#> [1] "2017-10-05"

days_hence(7)  # equivalent to lubridate::today() + lubridate::days(7)
#> [1] "2017-10-19"
```

Why lubridateExtras?
--------------------

Some people are probably asking the question: why lubridateExtras?

lubridateExtras does not do anything that you cannot do with lubridate but similarly you don't need lubridate at all to work with date/times in R! If you like the syntactic sugar of lubridateExtras then use it, otherwise stick with what works for you.
