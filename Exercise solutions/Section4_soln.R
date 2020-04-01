

newPlot <- function(data, row = 1:10){
  Data <- data[row,,drop=F]
  matplot(t(Data), type = "b", pch = 15:18, col = c(1:4,6))
  legend("bottomleft", inset = 0.1, legend= Players[row],pch = 15:18, col = c(1:4,6), horiz = F)
}


#1 Free throw attempts / Games 

newPlot(Free.throwAttempts/Games)

#2 FreeThrow accuracy
newPlot(Free.throw/Free.throwAttempts)

#3 Player styles excluding free throws
newPlot((Points - Free.throw)/ FieldGoals)
