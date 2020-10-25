.set_xts_options <- function() {
  options("xts.max.print" = 1) #TODO change to Inf for release
  options("xts.print.topn" = 5)
  return(invisible())
}

.get_xts_options <- function() {
  return(c("xts.max.print" = getOption("xts.max.print"),
           "xts.print.topn" = getOption("xts.print.topn")))
}
