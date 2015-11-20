#' Detect factors that should be characters
#'
#' This function will detect a list of factors that should be characters because its number of unique levels
#' is actually the same as the length of the list. If the list does have some levels that appear more than
#' once, then this function will not do anything.
#'
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
