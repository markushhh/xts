#TODO move to zoo (format.zoo) if zoo accepts new print method
format.xts <- function(x,
                       max = getOption("xts.max.print"),
                       topn = getOption("xts.print.topn")) {
  max <- ifelse(NROW(x) < max, NROW(x), max)
  index <- as.character(index(x))
  index <- c(index[c(1:topn)], "...", index[(max-topn+1):max])
  y <- rbind(
    format(as.matrix(x[1:topn, ])),
    format(matrix(rep("", NCOL(x)), nrow = 1)),
    format(as.matrix(x[(max-topn+1):max, ]))
  )
  rownames(y) <- format(index, justify = "right")
  colnames(y) <- colnames(x)
  return(y)
}
