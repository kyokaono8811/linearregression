
<!-- README.md is generated from README.Rmd. Please edit that file -->

# linearregression.packages

<!-- badges: start -->

[![R-CMD-check](https://github.com/kyokaono8811/linearregression/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/kyokaono8811/linearregression/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of linearregression.packages is to run a simple/multiple linear
regression to understand the relationship between covariates and a
response variable.

## Installation

You can install the development version of linearregression.packages
from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("kyokaono8811/linearregression")
```

## Usage

This demonstrates how to use the function with a dataset (mtcars)

``` r
library(linearregression.packages)
```

``` r
library(datasets)
data(mtcars)
head(mtcars)
#>                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
#> Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#> Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#> Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#> Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#> Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

``` r
Y <- mtcars$hp
X <- cbind(mtcars$wt, mtcars$drat)
```

``` r
linearregression(X,Y)
#> $beta_hat
#>            [,1]
#> [1,] -27.782337
#> [2,]  48.244390
#> [3,]   5.353883
#> 
#> $yhat
#>            [,1]
#>  [1,] 119.49811
#>  [2,] 131.80043
#>  [3,] 104.75710
#>  [4,] 143.81334
#>  [5,] 155.04309
#>  [6,] 153.91997
#>  [7,] 161.63610
#>  [8,] 145.87309
#>  [9,] 145.17471
#> [10,] 159.16558
#> [11,] 159.16558
#> [12,] 185.00875
#> [13,] 168.60566
#> [14,] 171.01788
#> [15,] 241.18759
#> [16,] 249.95688
#> [17,] 247.37697
#> [18,] 100.19916
#> [19,]  76.52699
#> [20,]  83.33950
#> [21,] 110.94945
#> [22,] 156.81463
#> [23,] 154.80187
#> [24,] 177.44610
#> [25,] 174.20730
#> [26,]  87.41440
#> [27,]  99.17836
#> [28,]  65.39556
#> [29,] 147.74576
#> [30,] 125.23568
#> [31,] 163.40288
#> [32,] 128.34152
#> 
#> $res
#>              [,1]
#>  [1,]  -9.4981068
#>  [2,] -21.8004263
#>  [3,] -11.7570957
#>  [4,] -33.8133352
#>  [5,]  19.9569053
#>  [6,] -48.9199683
#>  [7,]  83.3639017
#>  [8,] -83.8730938
#>  [9,] -50.1747112
#> [10,] -36.1655843
#> [11,] -36.1655843
#> [12,]  -5.0087498
#> [13,]  11.3943428
#> [14,]   8.9821233
#> [15,] -36.1875864
#> [16,] -34.9568820
#> [17,] -17.3769682
#> [18,] -34.1991619
#> [19,] -24.5269939
#> [20,] -18.3395031
#> [21,] -13.9494499
#> [22,]  -6.8146317
#> [23,]  -4.8018727
#> [24,]  67.5538974
#> [25,]   0.7926992
#> [26,] -21.4143985
#> [27,]  -8.1783574
#> [28,]  47.6044376
#> [29,] 116.2542363
#> [30,]  49.7643218
#> [31,] 171.5971204
#> [32,] -19.3415246
```
