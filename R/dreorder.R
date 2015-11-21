#' Sets levels of factors to the order in which they appear in the data
#'
#' @param a a list of factors
#' @param b a vector of the same length as a, whose subset of values for each unique level
#' of a determines the eventual order of that level.
#'
#' @return same list of factors but with descending order with respect to the measure b
#' @export
#'
#' @examples
#' x <- data.frame(homework = factor(c('560', '547', '545')), length = c(2, 3, 1))
#' with(dreorder(homework, length), data = x)

dreorder <- function(a,b) {
  stopifnot(is.factor(a))
  stopifnot(is.numeric(b))
  a <- reorder(a,dplyr::desc(b))
  attributes(a)$scores <- NULL # remove the scores sttribute that reorder function added
  a
}
