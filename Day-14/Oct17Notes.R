Reverse a vector, recursively 

revrec <- function(v){
  browser()
  if (length(v)==0) 
    return(v) 
  else{  
    return(c(revrec(v[-1]),v[1]))
} 
}

qsort <- function(v, lessthan= `>`){
  ghelper <- function(v){
    if (length(v) <= 1) return(v)
    mid <- v[ceiling(runif(1,min=2,max=length(v)))]
    mids <- v[v==mid] # This one
    left <- v[lessthan(v,mid)]
    right <- v[lessthan(mid,v)] # This one
    return(c(qhelper(left),mids,qhelper(right)))
  }
  # set things up
  return(qhelper(v))
}