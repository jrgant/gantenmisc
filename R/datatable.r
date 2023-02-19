#' @title Retrieve column names
#'
#' @description Helper function that returns column names from a data frame based on a regular expression.
#'
#' @param pat A regular expression defining the pattern(s) used to retrieve column names.
#' @param data A `data.frame` from which to retrieve the column names.
#' @param ... Pass arguments to `grep()`
#'
#' @return A vector of column names from the selected `data.frame`, each matching the pattern specified in `pat`.
#'
#' @import data.table
#' @export getnames

getnames <- function(pat, data, ...) {
  nvec <- names(data)
  nvec[grep(pat, nvec, perl = TRUE, ...)]
}


#' @title Alias for data.table's `[`
#'
#' @description An alias for the `[` function in `data.table`, for manipulating
#'              data tables using R's native pipe operator.
#'
#' @details
#' Not my idea (see: eliocamp's comments):
#' https://github.com/Rdatatable/data.table/issues/4872
#'
#' @import data.table
#' @export d

d <- data.table:::"[.data.table"


#' @title Convert output of expand.grid to data.table
#'
#' @description A wrapper around `expand.grid()` that outputs a `data.table` instead of a vanilla `data.frame`.
#'
#' @param ... Pass arguments to `expand.grid()`
#'
#' @import data.table
#' @export expand_grid

expand_grid <- function(...) as.data.table(expand.grid(...))
