# Strings, Numbers, and collections

Funny things can happen when you construct strings. 
* The quotes are a signal to the interpreter, not part of the string itself
* To put in quotes, escape them.
* Things like cat('\n') indicate "control characters."


```r
myFavoriteName = "Vladimir Puten"
```

The President of the Russian Republic is 

```r
myFavoriteName
```

```
## [1] "Vladimir Puten"
```



```r
cat("The fog came in\non little cats feet.")
```

```
## The fog came in
## on little cats feet.
```

