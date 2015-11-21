<!-- README.md is generated from README.Rmd. Please edit that file -->
This is my Stat 547M HW08, continuing where Jenny left off on the package `foofactors`.

The first function added is the `detect_fac` function that detects a list of factors that should be characters when the number of unique levels is equal to the length of the list. When the above scenario happens, `detect_fac()` will convert the list from a list of factors to a list of characters; if there are some levels that appear more than once, then we do nothing to this list.

``` r
# To install the package:
# install_github("MingWan10/foofactors")

library(foofactors)
browseVignettes("foofactors")
#> starting httpd help server ... done
(detect_fac(factor(c("a", "b", "c"))))
#> [1] "a" "b" "c"
```
