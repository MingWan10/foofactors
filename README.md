<!-- README.md is generated from README.Rmd. Please edit that file -->
This is my Stat 547M HW08, continuing where Jenny left off on the package `foofactors`.

Detect factors that should be characters
----------------------------------------

The first function added is the `detect_fac` function that detects a list of factors that should be characters when the number of unique levels is equal to the length of the list. When the above scenario happens, `detect_fac()` will convert the list from a list of factors to a list of characters; if there are some levels that appear more than once, then we do nothing to this list.

``` r
# To install the package:
# install_github("MingWan10/foofactors")

library(foofactors)
browseVignettes("foofactors")
#> starting httpd help server ... done

(detect_fac(factor(c("a", "b", "c"))))
#> [1] "a" "b" "c"
(detect_fac(factor(c("a", "b", "b"))))
#> [1] a b b
#> Levels: a b
```

`dreorder()` that uses `desc()` a la `dplyr`
--------------------------------------------

The second function added is `dreorder` that takes in a list of factors a, followed by another list b, whose values correspond to a. It returns the same list of factors as a, but the order of levels is in descending order with respect to b.

Note: by default `reorder` adds an attribute `scores` to the list of factors a, which is not what I wanted, so I removed this attribute when returning the reordered list.

``` r
x <- data.frame(homework = factor(c('560', '547', '545')), length = c(2, 3, 1))
with(dreorder(homework, length), data = x)
#> [1] 560 547 545
#> Levels: 547 560 545
```
