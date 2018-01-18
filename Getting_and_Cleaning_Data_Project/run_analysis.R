# Getting and Cleaning Data Course Project
# File: run_analysis.R
# by Roxanne S. Avinante
# January 18, 2018

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#
# Load the libraries
#

library(data.table)
library(dplyr)
library(reshape2)

#
# Download and extract the dataset
#

filename <- "data.zip"

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, mode="wb")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

#
# Read dataset. Load activity labels and features.
#

activity_labels <- fread(file.path(getwd(), "UCI HAR Dataset/activity_labels.txt"), col.names = c("labels", "activity_name"))
features <- fread(file.path(getwd(), "UCI HAR Dataset/features.txt"), col.names = c("id", "feature_name"))

#
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Appropriately labels the data set with descriptive variable names.
#

feature_mean_std <- grep("(mean|std)\\(\\)", features[, feature_name])
measurements <- features[feature_mean_std, feature_name]
measurements <- gsub('[()]', '', measurements)

#
# Read and load training dataset. 
#

train <- fread(file.path(getwd(), "UCI HAR Dataset/train/X_train.txt"))[, feature_mean_std, with = FALSE]
data.table::setnames(train, colnames(train), measurements)
train_activity <- fread(file.path(getwd(), "UCI HAR Dataset/train/Y_train.txt"), col.names = c("Activity"))
train_subject <- fread(file.path(getwd(), "UCI HAR Dataset/train/subject_train.txt"), col.names = c("Subject"))
train <- cbind(train_subject, train_activity, train)

#
# Read and load training dataset.
#

test <- fread(file.path(getwd(), "UCI HAR Dataset/test/X_test.txt"))[, feature_mean_std, with = FALSE]
data.table::setnames(test, colnames(test), measurements)
test_activity <- fread(file.path(getwd(), "UCI HAR Dataset/test/Y_test.txt"), col.names = c("Activity"))
test_subject <- fread(file.path(getwd(), "UCI HAR Dataset/test/subject_test.txt"), col.names = c("Subject"))
test <- cbind(test_subject, test_activity, test)

#
# Merge the training and the test sets to create one dataset.
#

merged <- rbind(train, test)

#
# Convert activities and subjects data into factors. Use descriptive activity names to name the activities in the dataset.
#

merged[["Activity"]] <- factor(merged[, Activity], levels = activity_labels[["labels"]], labels = activity_labels[["activity_name"]])
merged[["Subject"]] <- as.factor(merged[, Subject])

merged <- melt(data = merged, id = c("Subject", "Activity"))
merged <- dcast(data = merged, Subject + Activity ~ variable, mean)

#
# Create an independent tidy data set with the average of each variable for each activity and each subject.
#
fwrite(x = merged, file = "tidyData.txt", quote = FALSE)