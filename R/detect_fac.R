#' Detect factors that should be characters
#'
#' @param a list of factors
#'
#' @return a list of characters
#' @export
#'
#' @examples
#' detect_fac(factor(c("a","b","c")))
detect_fac <- function (a) {
  stopifnot(is.factor(a))
  if (nlevels(a) == length(a)) {
    a <- as.character(a)
  }
  else {
    a
  }
}
