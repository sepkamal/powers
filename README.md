`Powers` package
================

This is an R package that gives `sqrt()` friends by providing other power functions. This package supports dataframes and so is particularily useful when working with a long list of values.

Installation
------------

Please install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("sepkamal/powers")
```

Example
-------

See the vignette for more extensive use, but here's a couple examples:

``` r
powers::reciprocal(2)
#> [1] 0.5
```

``` r
powers::cube(2)
#> [1] 8
```

One way you can view the vignette is by running this code after you have loaded the package:

``` r
browseVignettes("powers")
```


For Developers
--------------

Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`, `reciprocal`, and `power_datatable`

But really, don't use this package because it's just a silly thing wipped together for class!!!
