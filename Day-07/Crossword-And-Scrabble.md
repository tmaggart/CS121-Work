Crosswords, Scrabble, and Regular Expressions
========================
## Summarizing the List

```r
words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))

Length1 <- function(x) {
    analyze <- grepl("^.$", x)
    return(length(x[analyze]))
}
Length1(words)
```

```
## [1] 0
```

```r

Length2 <- function(x) {
    analyze <- grepl("^..$", x)
    return(length(x[analyze]))
}
Length2(words)
```

```
## [1] 85
```

## 100 longest words

```r
LongestWords <- function(words) {
    words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))
    list <- c()
}
```


## Crossword helper

```r
crossword <- function(expression) {
    words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))
    analyze <- grepl(expression, words)
    return(words[analyze])
}

# Test Solutions
crossword("^b.t$")
```

```
## [1] "bat" "bet" "bit" "bot" "but"
```

## A Better Crossword Helper

```r
crosswordPattern <- function(times) {
    x <- "."
    
    words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))
    
    expression <- rep(x, times)
    analyze <- grepl(paste("^", expression, "$", col = ""), words)
    return(words[analyze])
}
crosswordPattern(10)
```

```
## Warning: argument 'pattern' has length > 1 and only the first element will
## be used
```

```
## character(0)
```

## Scrabble 


