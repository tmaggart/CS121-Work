Functions and Graphics
=========================
## Sum of Numbers

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
```

## Triangles
1. Finding the Hypotenuse Length

```r
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
thetaFromLengths(1, 2, 3)
```

```
## [1] 3.142
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

## Graphics

```r
canvas <- function(mn = 0, mx = 100) {
    plot(1:2, ylim = c(mn, mx), xlim = c(mn, mx), asp = 1, xaxt = "n", yaxt = "n", 
        type = "n", bty = "n", xlab = "", ylab = "")
}

circle <- function(x, y, r, ry = r, ...) {
    angs <- seq(0, 2 * pi, length = 200)
    xpts <- x + r * cos(angs)
    ypts <- y + ry * sin(angs)
    polygon(xpts, ypts, ...)
}
```

Olympic Rings

```r
canvas()
circle(10, 60, 10, col = "blue", border = NULL)
circle(10, 60, 8, col = "white", border = NULL)
circle(20, 50, 10, col = "yellow", border = NULL)
circle(20, 50, 8, col = "white", border = NULL)
circle(30, 60, 10, col = "black", border = NULL)
circle(30, 60, 8, col = "white", border = NULL)
circle(40, 50, 10, col = "green", border = NULL)
circle(40, 50, 8, col = "white", border = NULL)
circle(50, 60, 10, col = "red", border = NULL)
circle(50, 60, 8, col = "white", border = NULL)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 

```
