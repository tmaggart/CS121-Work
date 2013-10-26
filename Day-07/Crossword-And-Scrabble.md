Crosswords, Scrabble, and Regular Expressions
========================
## Summarizing the List


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
