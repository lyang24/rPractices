complete <- function(directory, id = 1:322) {
  filelist <- list.files(path = directory, pattern = ".csv", full.names = T)
  data2 <- data.frame()
  for (i in id){
  data <- read.csv(filelist[i])
  comp <- sum(complete.cases(data))
  tmp <- data.frame(i, comp)
  data2 <- rbind(data2, tmp)
  }
  colnames(data2) <- c("id", "nobs")
  data2
}