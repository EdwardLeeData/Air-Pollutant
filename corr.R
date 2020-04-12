corr <- function(directory, threshold = 0){
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  
  for (i in 1:length(filelist)){
    x <- read.csv(filelist[i])
    csum <- sum(complete.cases(x))
    if (csum > threshold) {
      sulf <- x[which(!is.na(x$sulfate)), ]
      nit <- x[which(!is.na(x$nitr))]
      
    }
    sulf <- read.csv(filelist[i])
    data <- read.csv(filelist[i])
    sulf <- data[["sulfate"]]
    nit <- data[["nitrate"]]
    c <- cor(sulf, nit)
    cornum <- c(cornum, c)
  }
  return(cornum)
}

cr <- corr("C:/Users/edjyl/OneDrive/Desktop/specdata")
head(cr)
