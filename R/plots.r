#' @title ggplot2 theme
#'
#' @description A quick ggplot2 theme that modifies `theme_pander()`.
#'
#' @import ggplot2
#' @import ggthemes
#' @export theme_gpander

theme_gpander <- function(...) {
  theme_pander(...) +
    theme(axis.title.x = element_text(margin = margin(t = 0.5, unit = "cm")),
          axis.title.y = element_text(margin = margin(r = 0.5, unit = "cm")),
          plot.margin = margin(t = 0.5, r = 0.5, b = 0.5, l = 0.5, "cm"))
}
