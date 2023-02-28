#' @title Commas in big numbers

#' @description A wrapper around \code{format()} that sets \code{big.mark =
#'   ","}.  Convenient for repeated use in manuscripts, tables, and other
#'   outputs meant for human consumption.
#' @param ... Feed arguments to \code{format()}.
#'
#' @export fbig
fbig <- function(...) {
  format(..., big.mark = ",")
}
