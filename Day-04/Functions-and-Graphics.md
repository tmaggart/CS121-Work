
```r
countOdds <- function(x) {
    sum(x%%2)
}

countOdds(1:9)
```

```
## [1] 5
```

```r

countEven <- function(x) {
    length(x) - countOdds(x)
}

countEven(1:9)
```

```
## [1] 4
```

```r

hypotenuseLength <- function(x, y) {
    sqrt(x^2 + y^2)
}

hypotenuseLength(3, 4)
```

```
## [1] 5
```

```r

lawOfCosines <- function(a, b, theta) {
    sqrt(a^2 + b^2 - 2 * a * b * cos(theta))
}

lawOfCosines(13, 84, 0)
```

```
## [1] 71
```

```r

thetaFromLengths <- function(a, b, c) {
    acos((c^2 - a^2 - b^2)/(-2 * a * b))
}
thetaFromLengths(3, 4, 5)
```

```
## [1] 1.571
```

```r

thetaFromLengthsTest <- function(a, b, theta) {
    thetaFromLengths(a, b, lawOfCosines(a, b, theta)) - theta
}

thetaFromLengthsTest(13, 84, 0)
```

```
## [1] 0
```

