Recursion
=============

## Sum

```r
nSeq <- function(v) {
    if (length(v) == 0) 
        return(0)
    return(rev(v[1]) + nSeq(rev(v[-1])))
}
nSeq(1:10)
```

```
## [1] 55
```



```r
newaddEm <- function(v) {
    if (length(v) == 0) 
        return(0)
    return(v[1] + newaddEm(v[-1]))
}
```

Test Solutions

```r
newaddEm(1:10)
```

```
## [1] 55
```

```r
newaddEm(1:100)
```

```
## [1] 5050
```

