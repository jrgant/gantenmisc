#' Retrieve column names
#'
#' Helper function that returns column names from a data frame based on a regular expression.
#'
#' @param pat A regular expression defining the pattern(s) used to retrieve column names.
#' @param data A data frame from which to retrieve the column names.
#'
#' @export getnames

getnames <- function(pat, data) {
  nvec <- names(data)
  nvec[grep(pat, nvec, perl = TRUE)]
}



#' Alias for data.table's `[`
#'
#' An alias for the `[` function in `data.table`, for manipulating data tables using R's native pipe operator.
#'
#' @description
#' Not my idea (ht eliocamp): https://github.com/Rdatatable/data.table/issues/4872
#'
#' @import data.table
#' @export d

d <- data.table:::"[.data.table"
