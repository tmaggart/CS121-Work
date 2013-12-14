Numbers and Strings
=====================
## Basic Statistics

```r
outlier <- function(x) {
    q <- quantile(x, probs = c(0.25, 0.75))
    width <- 1.5 * (q[[2]] - q[[1]])
    high <- width + q[[2]]
    low <- q[[1]] - width
    out <- c()
    for (k in 1:length(x)) {
        out <- c(out, x[k] > high | x[k] < low)
    }
    return(out)
}

outlier(5)
```

```
## [1] FALSE
```

## Numbers and Languages

```r
EnglishNumbers <- c("zero", "one", "two", "three", "four", "five", "six", "seven", 
    "eight", "nine")

digitToWord <- function(n, language) {
    return(language[n + 1])
}

digitToWord(4, EnglishNumbers)
```

```
## [1] "four"
```

## Help for Crossword Puzzles

```r
lettersMatch <- function(words, pattern) {
    words <- readLines(url("http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt"))
    analyze <- grepl(pattern, words)
    return(words[analyze])
}
# 7 letter words starting with 'b' ending in 'ing'
lettersMatch(words, "^b...ing")
```

```
## Warning: closing unused connection 5
## (http://dtkaplan.github.io/ScientificComputing/Syllabus/Daily/Day-07/word_list_moby_crossword-flat/word_list_moby_crossword.flat.txt)
```

```
##   [1] "babying"    "baching"    "backing"    "backings"   "badging"   
##   [6] "baffing"    "bagging"    "baggings"   "bailing"    "baiting"   
##  [11] "balding"    "balking"    "balling"    "banding"    "banging"   
##  [16] "banking"    "bankings"   "banning"    "barbing"    "barding"   
##  [21] "barfing"    "barging"    "barking"    "barring"    "bashing"   
##  [26] "basking"    "basting"    "bastings"   "bathing"    "batting"   
##  [31] "battings"   "batwing"    "bawling"    "beading"    "beadings"  
##  [36] "beaming"    "beaning"    "bearing"    "bearings"   "beating"   
##  [41] "beatings"   "becking"    "bedding"    "beddings"   "beefing"   
##  [46] "beeping"    "befringe"   "befringed"  "befringes"  "befringing"
##  [51] "begging"    "belling"    "belting"    "beltings"   "belying"   
##  [56] "bending"    "besting"    "betting"    "biasing"    "bibbing"   
##  [61] "bidding"    "biddings"   "biffing"    "bigging"    "biggings"  
##  [66] "bilging"    "bilking"    "billing"    "billings"   "binding"   
##  [71] "bindings"   "binning"    "birding"    "birling"    "birlings"  
##  [76] "birring"    "bitting"    "bittings"   "blaming"    "blaring"   
##  [81] "blawing"    "blazing"    "blowing"    "blueing"    "blueings"  
##  [86] "bluming"    "boating"    "boatings"   "bobbing"    "bodying"   
##  [91] "bogging"    "boiling"    "bolling"    "bolting"    "bombing"   
##  [96] "bonding"    "bonging"    "booking"    "bookings"   "booming"   
## [101] "booting"    "boozing"    "bopping"    "bossing"    "bousing"   
## [106] "bowling"    "bowlings"   "bowsing"    "bracing"    "bracings"  
## [111] "braking"    "braving"    "braying"    "brazing"    "brewing"   
## [116] "brewings"   "bribing"    "brining"    "bruting"    "bucking"   
## [121] "budding"    "budging"    "buffing"    "bugging"    "bugling"   
## [126] "bulging"    "bulking"    "bulling"    "bumming"    "bumping"   
## [131] "bunging"    "bunking"    "bunting"    "buntings"   "buoying"   
## [136] "burking"    "burling"    "burning"    "burnings"   "burping"   
## [141] "burring"    "burying"    "bushing"    "bushings"   "busking"   
## [146] "bussing"    "bussings"   "busting"    "busying"    "butting"   
## [151] "buzzing"    "byrling"
```

## Have your pi two ways

```r
piSeries <- function(n) {
    state <- 0
    for (k in 1:(length(n))) {
        result <- ((-1)^(k + 1))/(2 * k - 1)
        state <- state + result
    }
    return(state * 4)
}

piSeries(1:10000)
```

```
## [1] 3.141
```


