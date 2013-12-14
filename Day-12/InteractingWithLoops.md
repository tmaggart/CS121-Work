Interacting With Loops
==========================

## Looping a Launch


```r

# Blastoff Repeat Loop
blastoffRepeat <- function(time) {
    repeat {
        Sys.sleep(1)
        cat(time, " ")
        time <- time - 1
        if (time < 1) 
            break
    }
    Sys.sleep(1)
    cat("Blastoff!")
}

# Blastoff While Loop with Horizontal Countdown
blastoffWhile <- function(time) {
    while (time != 0) {
        Sys.sleep(1)
        cat(time, "")
        time <- time - 1
    }
    Sys.sleep(1)
    cat("Blastoff!")
}
# Blastoff While Loop with Vertical Countdown
blastoffWhile2 <- function(time) {
    while (time != 0) {
        Sys.sleep(1)
        cat(time, "\n")
        time <- time - 1
    }
    Sys.sleep(1)
    cat("Blastoff!")
}
```

Test Solutions:

```r
blastoffRepeat(5)
```

```
## 5  4  3  2  1  Blastoff!
```

```r
blastoffWhile(5)
```

```
## 5 4 3 2 1 Blastoff!
```

```r
blastoffWhile2(5)
```

```
## 5 
## 4 
## 3 
## 2 
## 1 
## Blastoff!
```

## Saying Blastoff

```r
countdown <- function(time) {
    for (k in time:1) {
        starttime <- Sys.time()
        system(paste("say", k))
        now <- Sys.time()
        Sys.sleep(1 - as.numeric(now - starttime))
    }
    system("say blastoff!")
}
```


## Latency Test

```r
getData <- function(N) {
    result <- rep(0, N)
    readline("This is a function that will test your reaction time. When you press enter there will be \n a random amount of time that will pass before the first prompt will pop up, \n this will prompt you to press enter once again as fast as possible, \n this process will repeat 5 times. Begin when ready.")
    cat(rep("\n", 20))
    N <- 5
    Sys.sleep(runif(1, min = 1, max = 5))
    for (k in 1:N) {
        before <- Sys.time()
        readline("Press enter!")
        after <- Sys.time()
        delay <- as.numeric(after - before)
        cat(rep("\n", 20))
        result[k] <- delay
        Sys.sleep(runif(1, min = 1, max = 5))
    }
    return(result)
}
```

## Resulting Data

```r
load("TrevorData.RData")
```

```
## Warning: cannot open compressed file 'TrevorData.RData', probable reason
## 'No such file or directory'
```

```
## Error: cannot open the connection
```

```r
TrevorData
```

```
## Error: object 'TrevorData' not found
```

