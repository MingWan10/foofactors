context("Reordering levels in a descending order")

test_that("dorder orders factor levels in a descending order", {
  x <- data.frame(homework = factor(c('560', '547','545')), length = c(2, 3, 1))
  x_fact <- factor(c('560','547','545'),levels = c('547','560','545'))

  expect_identical(with(dreorder(homework, length),data = x), x_fact)

  x <- data.frame(homework = c(560, 547, 545), length = c(2, 3, 1))
  expect_error(with(dreorder(homework,length),data = x))

  x <- data.frame(homework = factor(c('560', '547','545')), length = as.character(c(2, 3, 1)))
  expect_error(with(dreorder(homework,length),data = x))
})
