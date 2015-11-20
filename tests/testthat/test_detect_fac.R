context("Detect Factors that should be Characters")

test_that("detects factors that should be characters", {
  x <- c('a', 'b', 'c')
  x_fact <- factor(x)
  y <- c('a', 'a', 'b')
  y_fact <- factor(y)

  expect_identical(detect_fac(x_fact), x)
  expect_identical(detect_fac(y_fact), y_fact)
  expect_error(detect_fac(c('a', 'b')))
})
