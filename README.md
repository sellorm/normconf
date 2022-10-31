
# normconf

<!-- badges: start -->
<!-- badges: end -->

The goal of the normconf package is to provide a simple R wrapper around the 
[NormConf](https://normconf.com) API.

## Installation

You can install the development version of normconf like so:

``` r
devtools::install_github("sellorm/normconf")
```

## Examples

There are a few simple functions that wrap access to the normcore API:

(You'll want to have your R console set net and wide for most of them.)

| Function               | Description                                                   |
| ---------------------- | ------------------------------------------------------------- |
| ascii()                | ASCII Goodness                                                |
| random()               | Random Goodness                                               |
| schedule()             | Normconf Schedule Goodness                                    |
| wisdom()               | Wisdom Goodness.                                              |
| get_talk("Talk title") | Find out what someone's talk will be about according to GPT-2 |
