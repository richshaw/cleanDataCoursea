##
# Script brief
#


# The purpose of this project is to demonstrate your ability to collect, work
# with, and clean a data set. The goal is to prepare tidy data that can be used
# for later analysis. You will be graded by your peers on a series of yes/no
# questions related to the project. You will be required to submit: 1) a tidy
# data set as described below, 2) a link to a Github repository with your script
# for performing the analysis, and 3) a code book that describes the variables,
# the data, and any transformations or work that you performed to clean up the
# data called CodeBook.md. You should also include a README.md in the repo with
# your scripts. This repo explains how all of the scripts work and how they are
# connected.

# You should create one R script called run_analysis.R that does the following. 

# 1. Merges the training and the test sets to create one data set. 

# 2. Extracts only the measurements on the mean and standard deviation for each
# measurement.

# 3. Uses descriptive activity names to name the activities in the data set 

# 4. Appropriately labels the data set with descriptive variable names. 

# 5. Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject.

##
# File download
#

# Local file name for zipped data
file <- "Data.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Downloads and  unzips data
# url is URL of zip file
# file is the local name of downloaded data
# exdir is where we want to store the unzipped files. Defaults to working dir.
# method = is download method, defaults to curl because this was created on a mac.
downloadUnzipData <- function(url,file,exdir = ".",method="curl") {
  # Download zip
  download.file(url,file,method=method)
  # Unzip files
  unzip(file,exdir = exdir)
}

# Brief assumes data is in working dir but will
# download data if it's not around
if(!file.exists(file)) {
  # URL of zipped data
  downloadUnzipData(url,file,method="curl")
}

##
# Start cleaning script
#

# Looking at the description of the data the data in README.txt and
# features_info.txt we can difference see that the different parts of the study
# have been split into separate files...
# 'features.txt': Friendly labels for 'x' the dependent variables of the study
# 'activity_labels.txt': Friendly labels 'y' the independent variables of the study 
# 'train/X_train.txt': Phone data for training group
# 'train/y_train.txt': Activities data for training group
# 'train/subject_test.txt': Subject Id's for trainng data
# 'test/X_test.txt': Phone data for training group
# 'test/y_test.txt': Activities for test training group
# 'test/subject_test.txt': Subject Id's for trainng data

# Before we can do any analysis we need to re-combine and re-label the data into
# a more friendly format.
# We're before starting analysi we're aiming for a table like the following.
# Subject | Independent Variables | Dependent variables

# Load data into environment

# Dependent vars
# data.x.train: Training set.
# data.x.test: Test set.

data.x.train <- read.table("UCI HAR Dataset//train//X_train.txt", header = FALSE)
print("data.x.train loaded")
data.x.test <- read.table("UCI HAR Dataset//test//X_test.txt", header = FALSE)
print("data.x.test loaded")

# Independent vars
# data.y.train: Training labels.
# data.y.test: Test labels.
data.y.train <- read.table("UCI HAR Dataset//train//y_train.txt", header = FALSE)
print("data.y.train loaded")
data.y.test <- read.table("UCI HAR Dataset//test//y_test.txt", header = FALSE)
print("data.y.test loaded")

# Subjects
data.subject.train <- read.table("UCI HAR Dataset//train//subject_train.txt", header = FALSE)
print("data.subject.train loaded")
data.subject.test <- read.table("UCI HAR Dataset//test//subject_test.txt", header = FALSE)
print("data.subject.test loaded")

# Variable labels
# Features = labels for y/independent vars
# Activity = labels for x/dependent vars
data.label.features <- read.table("UCI HAR Dataset//features.txt", header = FALSE)
print("data.label.features loaded")
data.label.activity <- read.table("UCI HAR Dataset//activity_labels.txt", header = FALSE)
print("data.label.activity loaded")

# The train and test groups are just random samples so we can safely re-combine the data

# Merge the training and the test sets to create one data set
data.x <- rbind(data.x.train, data.x.test)
data.y <- rbind(data.y.train, data.y.test)
data.subject <- rbind(data.subject.train, data.subject.test)

# Sanity check. Each row in our 3 data sets should be the same person so each
# data set should have the same number of rows.

if( (nrow(data.x) != nrow(data.y)) | 
    (nrow(data.y) !=  nrow(data.subject)) |
    (nrow(data.x) !=  nrow(data.subject))  ) stop('Unequal number of subjects in data')

### 4. Appropriately labels the data set with descriptive variable names. 
# Give x the DV's friendly column labels
colnames(data.x) <- data.label.features[["V2"]]
# Give y the IV a friendly column label
colnames(data.y) <- c('activity')
# Give subject the subject id's a friendly column label
colnames(data.subject) <- c('subject')

print("Given data friendly column names")

### 3. Uses descriptive activity names to name the activities in the data set
# The activity data in y isn't really integers they're categories so lets make them so
data.y[["activity"]] <- factor(data.y[["activity"]],
                               levels = data.label.activity[["V1"]], 
                               labels = data.label.activity[["V2"]])

print("Converted activity column to factor")

# Combine the data together to a representation of all the data in a tidy format
data.tidy.all <- cbind(data.subject,data.y,data.x) 

print("Combined data into single tidy data set")

### 2. We're only interested in the measurements on the mean and standard deviation for each measurement...
# According to features.txt all mean and std dev vars are tagged with mean() and std()

# Extract names of mean() and std() columns
# Regex looks for columns that contains mean() OR std()
stdmeanColumns <- names(data.tidy.all)[grep('(mean\\(\\)|std\\(\\))',names(data.tidy.all))]
# Create vector of columns we want to subset from total data set. Subject ID, IV + DV's
subsetColumns <- c('subject','activity',stdmeanColumns)
# Subset data to requried columns
data.tidy.stdmean <- subset(data.tidy.all, select = subsetColumns)

print("Extracted std and mean variables into tidy data set")

### 5. Create a second, independent tidy data set with the average of each
### variable for each activity and each subject.
data.tidy.means <- aggregate(. ~ subject+activity,data = data.tidy.stdmean, mean)

print("Calculated means for each variable for each subject and activity")

#Write ouput 
write.table(data.tidy.means,"data_tidy_means.txt")

print("Tidy data written to data_tidy_means.txt")
print("DONE")
