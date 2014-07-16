# Codebook

Codebook for `data_tidy_means.txt`

## Variables

All continous variables are the mean value per subject per activity.

Number | Variable Name | Data Type
-------|---------------|----------
1 | subject | Categorical
2 | activity | Categorical
3 | tBodyAcc-mean()-X | Continuous
4 | tBodyAcc-mean()-Y | Continuous
5 | tBodyAcc-mean()-Z | Continuous
6 | tBodyAcc-std()-X | Continuous
7 | tBodyAcc-std()-Y | Continuous
8 | tBodyAcc-std()-Z | Continuous
9 | tGravityAcc-mean()-X | Continuous
10 | tGravityAcc-mean()-Y | Continuous
11 | tGravityAcc-mean()-Z | Continuous
12 | tGravityAcc-std()-X | Continuous
13 | tGravityAcc-std()-Y | Continuous
14 | tGravityAcc-std()-Z | Continuous
15 | tBodyAccJerk-mean()-X | Continuous
16 | tBodyAccJerk-mean()-Y | Continuous
17 | tBodyAccJerk-mean()-Z | Continuous
18 | tBodyAccJerk-std()-X | Continuous
19 | tBodyAccJerk-std()-Y | Continuous
20 | tBodyAccJerk-std()-Z | Continuous
21 | tBodyGyro-mean()-X | Continuous
22 | tBodyGyro-mean()-Y | Continuous
23 | tBodyGyro-mean()-Z | Continuous
24 | tBodyGyro-std()-X | Continuous
25 | tBodyGyro-std()-Y | Continuous
26 | tBodyGyro-std()-Z | Continuous
27 | tBodyGyroJerk-mean()-X | Continuous
28 | tBodyGyroJerk-mean()-Y | Continuous
29 | tBodyGyroJerk-mean()-Z | Continuous
30 | tBodyGyroJerk-std()-X | Continuous
31 | tBodyGyroJerk-std()-Y | Continuous
32 | tBodyGyroJerk-std()-Z | Continuous
33 | tBodyAccMag-mean() | Continuous
34 | tBodyAccMag-std() | Continuous
35 | tGravityAccMag-mean() | Continuous
36 | tGravityAccMag-std() | Continuous
37 | tBodyAccJerkMag-mean() | Continuous
38 | tBodyAccJerkMag-std() | Continuous
39 | tBodyGyroMag-mean() | Continuous
40 | tBodyGyroMag-std() | Continuous
41 | tBodyGyroJerkMag-mean() | Continuous
42 | tBodyGyroJerkMag-std() | Continuous
43 | fBodyAcc-mean()-X | Continuous
44 | fBodyAcc-mean()-Y | Continuous
45 | fBodyAcc-mean()-Z | Continuous
46 | fBodyAcc-std()-X | Continuous
47 | fBodyAcc-std()-Y | Continuous
48 | fBodyAcc-std()-Z | Continuous
49 | fBodyAccJerk-mean()-X | Continuous
50 | fBodyAccJerk-mean()-Y | Continuous
51 | fBodyAccJerk-mean()-Z | Continuous
52 | fBodyAccJerk-std()-X | Continuous
53 | fBodyAccJerk-std()-Y | Continuous
54 | fBodyAccJerk-std()-Z | Continuous
55 | fBodyGyro-mean()-X | Continuous
56 | fBodyGyro-mean()-Y | Continuous
57 | fBodyGyro-mean()-Z | Continuous
58 | fBodyGyro-std()-X | Continuous
59 | fBodyGyro-std()-Y | Continuous
60 | fBodyGyro-std()-Z | Continuous
61 | fBodyAccMag-mean() | Continuous
62 | fBodyAccMag-std() | Continuous
63 | fBodyBodyAccJerkMag-mean() | Continuous
64 | fBodyBodyAccJerkMag-std() | Continuous
65 | fBodyBodyGyroMag-mean() | Continuous
66 | fBodyBodyGyroMag-std() | Continuous
67 | fBodyBodyGyroJerkMag-mean() | Continuous
68 | fBodyBodyGyroJerkMag-std() | Continuous

## Cleaning choices made when tidying data

* Combined train and test data for x, y, and subject data files.
* Renamed x data columns based on second column of the features dataset
* Renamed y data column "activity"
* Renamed subject data column "subject"
* Converted numeric "activity" codes in y dataframe to labeled factor
* Combined x,y & subject datsets into single dataframe
* Subsetted combined data to create new dataframe that just contains the columns that contain mean() and std()
* Created a final dataframe that calculates the means for each variable for each subject and activity

## Orginal study design

Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 


Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip for further details about this dataset.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

features_info.txt file in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip also contains useful information about the variables.
