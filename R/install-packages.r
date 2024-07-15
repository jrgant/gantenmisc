#' @title Install commonly used R packages
#'
#' @description This function installs a list of R packages I use frequently. Primarily for use with a fresh or upgraded R installation. Note that the function name is not exported into the global environment, in order to avoid unintentional use that may affect ongoing projects.

#' @param main A Boolean indicating whether to install the main list of packages. Default is \code{TRUE}.
#' @param spatial A Boolean indicating whether to install spatial packages. Default is \code{FALSE}.
#' @param quickdag A Boolean indicating whether to install the \code{quickdag} package. Default is \code{FALSE}.

#' @return No objects are returned. The function simply installs a list of R packages.

#' @examples
#' install.packages("remotes")
#' remotes::install_github("jrgant/gantenmisc")
#' gantenmisc::install_packages()

install_packages <- function(main = TRUE, spatial = FALSE, quickdag = FALSE) {

  prompt <- readline(
    "This will take LONG time. Are you sure you want to proceed? (y/n)"
  )

  if (main == TRUE) {
    if (toupper(prompt) == "Y") {
      message("You've been warned! Proceeding with installation ...")
      install.packages(c(
        # data wrangling
        "data.table",
        "collapse",
        "kit",
        "rrapply",
        "rvest",
        # data formats
        "qs",
        "fst",
        "arrow",
        # plotting
        "ggplot2",
        "ggthemes",
        "ggrepel",
        "ggtext",
        "cowplot",
        "igraph",
        "palettes",
        "DiagrammeR",
        # tables
        "kableExtra",
        "flextable",
        "gt",
        # dates and strings
        "stringr",
        "lubridate",
        "fasttime",
        # computing
        "foreach",
        "doParallel",
        "targets",
        # development
        "devtools",
        "languageserver",
        # statistics
        "glmnet",
        "rstan",
        "xgboost",
        "caret"
      ), dependencies = TRUE)
    }
    if (quickdag == TRUE) {
      remotes::install_github("jrgant/quickdag")
    }

    if (spatial == TRUE) {
      install.packages(c(
        # spatial
        "sf",
        "raster",
        "terra",
        "sp",
        "rgdal"
      ), dependencies = TRUE)
    }
  } else {
    message("You're right, there are better things you could be doing. ",
            "Installation aborted.")
  }

  invisible(NULL)
}
