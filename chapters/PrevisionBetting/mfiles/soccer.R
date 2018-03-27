rank <- c(1241, 955, 930, 520, 1229, 1496, 1098, 397, 1492, 1091, 850, 604, 986, 911, 1056, 1330, 1216, 901, 1202, 637, 1606, 917, 563, 664, 1724, 1148, 989, 642, 1401, 872, 501, 897)
## averagegoals <- function(r1,r2){
##   t1 <- max(rank)-r1
##   t2 <- r1-r2
##   result <- (a*t1)+(b*t2)+1
##   return(result)
## }
d <- 3
b <- (d-1)/(2*(max(rank)-mean(rank)))
c <- 1+(2*b*max(rank))
a <- .4
averagegoals <- function(r1,r2){
  result <- (a*(((r1-r2)^3)^.1))-(b*(r1+r2))+c
  return(result)
}
r <- c(c(1000,1000,averagegoals(1000,1000)),c(1724,1724,averagegoals(1724,1724)),c(1724,397,averagegoals(1724,397)),c(1241,955,averagegoals(1241,955)),c(397,397,averagegoals(397,397)))

  


