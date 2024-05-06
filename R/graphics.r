#' @title Get graphics device aspect ratio

#' @param type One of width-to-height (w2h) or height-to-width (h2w).
#'             Defaults to "w2h".

#' @export
dev_asp <- function(type = c("w2h", "h2w")) {
  devsize <- dev.size()
  switch(type[1],
         w2h = devsize[1] / devsize[2],
         h2w = devsize[2] / devsize[1])
}
