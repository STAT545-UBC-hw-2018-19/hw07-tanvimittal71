
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Build
Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)

**Note**: This R package is not mean to be “serious”. It’s just for
teaching purposes.

# powers

This is an R package that gives `sqrt()` friends by providing other
power functions along with box-cox transformation.

## Installation

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-tanvimittal71
/powers-master")
```

## Example

See the vignette for more extensive use, but here’s some examples:

``` r
powers::square(2)
#> [1] 4
powers:: cube(2)
#> [1] 8
powers::reciprocal(2)
#> [1] 0.5
powers::box.cox(3,4)
#> [1] 20
```

## For Developers

(Again, I don’t actually intend for anyone to develop this silly
package, but if I did, here’s what I’d write.)

Use the internal `pow` function as the machinery for the front-end
functions such as `square`, `cube`, `reciprocal` and `box.cox`.
