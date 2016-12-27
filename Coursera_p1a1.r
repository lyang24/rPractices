pollutantmean <- function(directory, pollutant, id = 1:length(list.files(directory))) {
    filelist <- list.files(path = directory, pattern = ".csv", full.names = T)
    values <- numeric()
    for (i in id){
      data <- read.csv(filelist[i])
      values <- c(values, data[[pollutant]])
    }
  mean(values, na.rm = TRUE)
}