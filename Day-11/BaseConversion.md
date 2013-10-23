# Base Conversion
## Task 1

```r
toBase <- function(Z, b) {
    Z <- Z
    state <- c()
    repeat {
        r <- Z%%b
        state <- c(r, state)
        Z <- ((Z - r)/b)
        if (Z == 0) 
            break
    }
    return(as.character(state))
}
```

Test Solutions:

```r
toBase(10, 2)
```

```
## [1] "1" "0" "1" "0"
```

```r
toBase(100, 3)
```

```
## [1] "1" "0" "2" "0" "1"
```

```r
toBase(1000, 16)
```

```
## [1] "3"  "14" "8"
```


## Task 2

```r
basetoNumeric <- function(N, b) {
    howMany <- length(N)
    herdsize <- b^((howMany - 1):0)
    return(sum(as.numeric(N) * herdsize))
}
```

Test Solutions:

```r
basetoNumeric((c("7", "6", "5", "4")), 8)
```

```
## [1] 4012
```

## As a Loop

```r
basetoNumericFor <- function(N, b) {
    # initialize state
    N <- as.numeric(N)
    sheepCount <- 0
    boxSize <- 1
    for (k in length(N):1) {
        sheepCount <- sheepCount + boxSize * N[k]
        boxSize <- boxSize * b
    }
    return(sheepCount)
}
```

Test Solutions:

```r
basetoNumericFor((c("7", "6", "5", "4")), 12)
```

```
## [1] 13024
```

