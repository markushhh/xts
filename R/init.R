.set_xts_options <- function() {
  options("xts.max.print" = 1)
  return(invisible())
}

.get_xts_options <- function() {
  return(getOption("xts.max.print"))
}
