String Transformer Functions
===========================
## Reverser


```r
Reverser <- function(x) {
    Alpha <- strsplit(x, NULL)
    Beta <- rev(Alpha[[1]])
    return(paste(Beta, collapse = ""))
}

Reverser2 <- function(x) {
    Charlie <- strsplit(x, NULL)[[1]]
    Delta <- Charlie[rev(1:nchar(x))]
    paste(Delta, collapse = "")
}
```

Test statements:

```r
# Put test statements here. Should return TRUE or FALSE
Reverser("dog")
```

```
## [1] "god"
```

```r
Reverser2("dog")
```

```
## [1] "god"
```

## Scrambler 

```r
Scrambler <- function(x) {
    Alpha <- strsplit(x, NULL)
    Beta <- sample(Alpha[[1]])
    return(paste(Beta, collapse = ""))
}
```

Test Statements:

```r
Scrambler("Tom Wakin")
```

```
## [1] "WakoT min"
```

## VowelBleeper

```r
Bleeper <- function(x) {
    gsub("[aeiou]", "*", x)
}
```

Test Statements:

```r
Bleeper("Is this working")
```

```
## [1] "Is th*s w*rk*ng"
```

## L33T

```r
l33t <- function(words) {
    First <- gsub("[Ee]", "3", words)
    Second <- gsub("[Aa]", "4", First)
    Third <- gsub("[Oo]", "0", Second)
    Fourth <- gsub("[Ll]", "1", Third)
    gsub("[Ss]", "5", Fourth)
}
```

Test Statements

```r
l33t("I really like dogs because they are adorable")
```

```
## [1] "I r3411y 1ik3 d0g5 b3c4u53 th3y 4r3 4d0r4b13"
```

## Sapply

```r
# Reverser
Reverser <- function(x) {
    Reverser <- function(x) {
        Alpha <- strsplit(x, NULL)
        Beta <- rev(Alpha[[1]])
        return(paste(Beta, collapse = ""))
    }
    sapply(x, Reverser)
}
Reverser(c("dogs", "cats", "balloons"))
```

```
##       dogs       cats   balloons 
##     "sgod"     "stac" "snoollab"
```

```r

# Scrambler
Scrambler <- function(x) {
    Scrambler <- function(x) {
        Alpha <- strsplit(x, NULL)
        Beta <- sample(Alpha[[1]])
        return(paste(Beta, collapse = ""))
    }
    sapply(x, Scrambler)
}
Scrambler(c("dogs", "cats", "balloons"))
```

```
##       dogs       cats   balloons 
##     "dsog"     "stca" "aonbllos"
```

```r

# Bleeper
Bleeper <- function(x) {
    Bleeper <- function(x) {
        gsub("[aeiou]", "*", x)
    }
    sapply(x, Bleeper)
}
Bleeper(c("dogs", "cats", "balloons"))
```

```
##       dogs       cats   balloons 
##     "d*gs"     "c*ts" "b*ll**ns"
```

```r

# L33t
l33t <- function(words) {
    l33t <- function(words) {
        First <- gsub("[Ee]", "3", words)
        Second <- gsub("[Aa]", "4", First)
        Third <- gsub("[Oo]", "0", Second)
        Fourth <- gsub("[Ll]", "1", Third)
        gsub("[Ss]", "5", Fourth)
    }
    sapply(words, l33t)
}
l33t(c("dogs", "cats", "balloons"))
```

```
##       dogs       cats   balloons 
##     "d0g5"     "c4t5" "b41100n5"
```

