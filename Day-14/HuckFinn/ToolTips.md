
```r
formatWord <- function(word, translation, class) {
    if (is.na(translation) == TRUE) 
        return(as.character(word)) else {
        paste("<span class=", "'", class, "'", " ", "title=", "'", translation, 
            "'", ">", word, "</span>", sep = "")
    }
}
```

Test Solutions:

```r
formatWord("Hello", "hi there!", "hiword")
```

```
## [1] "<span class='hiword' title='hi there!'>Hello</span>"
```



TelevisionLand

```r
cat(formatWord("Hello", "hi there!", "hiword"), "to", "all", "of", "you", "in", 
    formatWord("Television Land.", "TV viewers", "hiword"))
```

<span class='hiword' title='hi there!'>Hello</span> to all of you in <span class='hiword' title='TV viewers'>Television Land.</span>


<style>
.hiword {background:orange;}
</style>

Character Vectors

```r
words <- c("How", "now", "brown", "cow", "1")
tips <- c("How are you doing?", NA, "Why brown?", "bovine", "enthusiasm")
styles <- c("hiword", "", "brown", "blue", "hiword")
```

Putting it all together

```r
Display <- function(words, tips) {
    words <- c("How", "now", "brown", "cow", "1")
    tips <- c("How are you doing?", NA, "Why brown?", "bovine", "enthusiasm")
    for (k in words) {
        cat(formatWord(k))
    }
}
```

Test

```r
Display()
```

```
## Error: 'translation' is missing
```

