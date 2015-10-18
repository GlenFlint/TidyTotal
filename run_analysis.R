run_analysis <- function() {
  ## Assumes that the Samsung data directory "UCI HAR Dataset" has been 
  ## unzipped into the current working directory.
  ##
  ## Merge the test and training dataset found in the directory 
  ## "UCI HAR Dataset" into one dataset.
  ##
  ## Only the mean of the measurement columns for mean and standard deviation 
  ## are included.
  ##
  ## The tidy dataset "tidyTotal.txt" is stored in the current working directory
  ## and returned by this function.
  ##
  ## Read the tidy dataset back using:
  ##   tidyTotal <- read.table("tidyTotal.txt", header = TRUE)

  old.dir = getwd()
  setwd("UCI HAR Dataset")
  
  activity_labels <- read.table("activity_labels.txt")
  features        <- read.table("features.txt")
  
  subject_test    <- read.table("test/subject_test.txt")
  X_test          <- read.table("test/X_test.txt", colClasses = "numeric")
  y_test          <- read.table("test/y_test.txt", colClasses = "numeric")
  
  subject_train   <- read.table("train/subject_train.txt")
  X_train         <- read.table("train/X_train.txt", colClasses = "numeric")
  y_train         <- read.table("train/y_train.txt", colClasses = "numeric")
  
  meanstd         <- grep("-(std|mean)\\(\\)", features$V2)
  
  test            <- cbind(subject_test, y_test, X_test[, meanstd])
  train           <- cbind(subject_train, y_train, X_train[, meanstd])
  
  total           <- rbind(test, train)
  
  tidyNames       <- gsub("[\\(\\)]", "", as.character(features$V2[meanstd]))
  tidyNames       <- gsub("-", "_", tidyNames)
  
  colnames(total) <- c("subject", "activity", tidyNames)
  total$activity  <- activity_labels$V2[total$activity]
  
  library(reshape2)
  meltTotal       <- melt(total, id=c("subject", "activity"))
  tidyTotal       <- dcast(meltTotal, subject + activity ~ variable, fun.aggregate = mean)
  
  setwd(old.dir)
  
  write.table(tidyTotal, file="tidyTotal.txt", row.name = FALSE)
  
  tidyTotal
}