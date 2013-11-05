Spot the Difference
=====================
# Subtracting to find differences

## Required Packages

```r
require(png)
```

```
## Loading required package: png
```

```r
require(jpeg)
```

```
## Loading required package: jpeg
```

```r
require(RCurl)
```

```
## Loading required package: RCurl Loading required package: bitops
```

```r
require(COMP121)
```

```
## Loading required package: COMP121 Loading required package: markdown
```

## Wanted Image

```r
puzzleURL <- "http://www.vistax64.com/attachments/chillout-room/9404d1231736689-spot-difference-spot02-c.jpg"
puzzle <- readJPEG(getURLContent(puzzleURL))
```

## Reading in the Image

```r
readImageURL <- function(URL) {
    isJPEG <- grepl("[.jpg$|.jpeg$]", URL)
    if (isJPEG) 
        image <- readJPEG(getURLContent(URL)) else image <- readPNG(getURLContent(URL))
}

readImageURL(puzzleURL)
```

