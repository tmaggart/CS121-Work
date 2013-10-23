Derivatives as Finite Differences
==================================
## First Derivative

```r
myD <- function(f) {
    h <- 1e-06
    fprime <- function(x) {
        (f(x + h) - f(x))/h
    }
    return(fprime)
}
```

Test Solutions:

```r
prime <- myD(sin)
prime(10)
```

```
## [1] -0.8391
```

## Second Derivative

```r
myD2 <- function(f) {
    h <- 0.001
    fprime <- function(x) {
        (f(x + h) - f(x))/h
    }
    ddx <- function(x) {
        (fprime(x + h) - fprime(x))/h
    }
    return(ddx)
}
```

Test solutions:

```r
besties <- myD2(sin)
plot(besties)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 

