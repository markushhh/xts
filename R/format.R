format.xts <- function(x, max = getOption("xts.max.print", Inf)) {
  max <- ifelse(NROW(x) < max, NROW(x), max)
  index <- as.character(index(x))
  index <- c(index[c(1:max)], "...", index[(NROW(x)-max+1):NROW(x)])
  y <- rbind(
    format(as.matrix(x[1:max, ])),
    format(matrix(rep("", NCOL(x)), nrow = 1)),
    format(as.matrix(x[(NROW(x)-max+1):NROW(x), ]))
  )
  rownames(y) <- format(index, justify = "right")
  colnames(y) <- colnames(x)
  return(y)
}
