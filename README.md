# run_analysis.R

Repository for Coursea data science course project on getting and cleaning data - https://class.coursera.org/getdata-005

## What does this do

1. This script takes the datasets available from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Re-combines the fragmented datasets into a single dataset
3. Gives dataset human friendly column names
4. Gives categorical data friendly labels
5. Reduces data set to only include mean and standard deviation variables
6. Calculates means for each variable for each subject and activity
7. Outputs tidy dataset of means for each variable for each subject and activity as `data_tidy_means.txt` 

## How to run script

1. Set working directory using `setwd()` to where `run_analysis.R` is kept
2. Run the script by calling `source("run_analysis.R")`
3. Script will print `DONE` when your `data_tidy_means.txt` is ready


