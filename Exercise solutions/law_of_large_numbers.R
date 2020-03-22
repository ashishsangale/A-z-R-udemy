

#input 
N <- 1000000

#initial countere value
counter <- 0

for(i in rnorm(N)){
  if(i > -1 & i < 1){
    counter <- counter+1
  }
}


#taking mean
answer <- counter / N
answer