Making a Rainbow Wheel
=============================
# Required Packages

```r
require(COMP121)
```

```
## Loading required package: COMP121 Loading required package: jpeg Loading
## required package: png Loading required package: RCurl Loading required
## package: bitops Loading required package: markdown
```

```r
require(manipulate)
```

```
## Loading required package: manipulate
```

# Creating the Wheel

```r
# Generate a plane of colors


planeBind <- function(red, green, blue) {
    array(c(red, green, blue), dim <- c(dim(red)[1], dim(red)[2], 3))
}


npixels <- 500
howMuchBlue <- 0.65

colorPlane <- function(npixels = 500, howMuchBlue = 0.5) {
    x <- seq(0, 1, length = npixels)
    
    # initialize state
    red <- matrix(0, nrow = npixels, ncol = npixels)
    for (k in 1:npixels) {
        # update
        red[, k] <- cbind(x)
    }
    
    green <- matrix(0, nrow = npixels, ncol = npixels)
    for (k in 1:npixels) {
        green[k, ] <- rbind(x)
    }
    
    blue <- matrix(howMuchBlue, nrow = npixels, ncol = npixels)
    return(planeBind(red, green, blue))
}

ShowImage <- function(image) {
    size <- dim(image)
    canvas(x = c(1, size[2]), y = c(1, size[1]), asp = 1)
    rasterImage(image, 1, 1, size[2], size[1])
}


manipulate({
    ShowImage(colorPlane(howMuchBlue = blue, npixels = npixels))
}, blue = slider(0, 1, step = 0.01, label = "Amount of Blue"))
```

```
## Error: no such symbol rs_createUUID
```

