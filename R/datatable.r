#' @title Retrieve column names
#'
#' @description Helper function that returns column names from a data frame based on a regular expression.
#'
#' @param pat A regular expression defining the pattern(s) used to retrieve column names.
#' @param data A `data.frame` from which to retrieve the column names.
#' @param negate Retrieve column names that DO NOT match the pattern. Logical.
#' @param ... Pass arguments to `grep()`
#'
#' @return A vector of column names from the selected `data.frame`, each matching the pattern specified in `pat`.
#'
#' @import data.table
#' @export getnames

getnames <- function(pat, data, negate = FALSE, ...) {
  grep(pat, names(data), perl = TRUE, value = TRUE, invert = negate, ...)
}


#' @title Alias for data.table's `[`
#'
#' @description Aliases for the `[` function in `data.table`, for manipulating
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
#' @description An alias for data.table's `CJ()`, which is like `expand.grid()` but returns a `data.table`
#'
#' @param ... Pass arguments to `expand.grid()`
#'
#' @importFrom data.table CJ
#' @export expand_grid

expand_grid <- CJ
