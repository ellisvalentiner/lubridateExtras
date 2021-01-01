# nocov start

.onLoad <- function(libname, pkgname) {
  ## source: https://github.com/tidyverse/lubridate/blob/master/R/zzz.R#L3-L25
  if (Sys.getenv("TZDIR") == "") {
    ## adapted from OlsonNames function
    tzdir <-
      if (.Platform$OS.type == "windows") {
        file.path(R.home("share"), "zoneinfo")
      } else if (!file.exists("/usr/share/zoneinfo")) {
        tzdirs <- c(file.path(R.home("share"), "zoneinfo"),
                    "/usr/share/lib/zoneinfo", "/usr/lib/zoneinfo",
                    "/usr/local/etc/zoneinfo", "/etc/zoneinfo",
                    "/usr/etc/zoneinfo")
        tzdirs <- tzdirs[file.exists(tzdirs)]
        if (length(tzdirs)) tzdirs[[1]]
        else NULL
      }
    if (!is.null(tzdir)) {
      Sys.setenv(TZDIR = tzdir)
    }
  }
}

#nocov end