addEm <- function(v){
  state <- 0 # accumulator
  for(k in v){
    state <- state + k
  }
  #add up v
  return(state)
}
Base cases
length(v) == o -----> 0
Simplification
present ----> base case
v[1]+addEm(v[-1])

newaddEm <- function(v){
  if(length(v)==0)
    return(0)
    return(v[1]+newaddEm(v[-1]))
}