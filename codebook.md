# Codebook

Codebook for `data_tidy_means.txt`

## Variables

All continous variables are the mean value per subject per activity.

Number | Variable Name | Data Type
-------|---------------|----------
1 | subject | Categorical
2 | activity | Categorical
3 | timeBodyAcc-mean()-X | Continuous
4 | timeBodyAcc-mean()-Y | Continuous
5 | timeBodyAcc-mean()-Z | Continuous
6 | timeBodyAcc-std()-X | Continuous
7 | timeBodyAcc-std()-Y | Continuous
8 | timeBodyAcc-std()-Z | Continuous
9 | timeGravityAcc-mean()-X | Continuous
10 | timeGravityAcc-mean()-Y | Continuous
11 | timeGravityAcc-mean()-Z | Continuous
12 | timeGravityAcc-std()-X | Continuous
13 | timeGravityAcc-std()-Y | Continuous
14 | timeGravityAcc-std()-Z | Continuous
15 | timeBodyAccJerk-mean()-X | Continuous
16 | timeBodyAccJerk-mean()-Y | Continuous
17 | timeBodyAccJerk-mean()-Z | Continuous
18 | timeBodyAccJerk-std()-X | Continuous
19 | timeBodyAccJerk-std()-Y | Continuous
20 | timeBodyAccJerk-std()-Z | Continuous
21 | timeBodyGyro-mean()-X | Continuous
22 | timeBodyGyro-mean()-Y | Continuous
23 | timeBodyGyro-mean()-Z | Continuous
24 | timeBodyGyro-std()-X | Continuous
25 | timeBodyGyro-std()-Y | Continuous
26 | timeBodyGyro-std()-Z | Continuous
27 | timeBodyGyroJerk-mean()-X | Continuous
28 | timeBodyGyroJerk-mean()-Y | Continuous
29 | timeBodyGyroJerk-mean()-Z | Continuous
30 | timeBodyGyroJerk-std()-X | Continuous
31 | timeBodyGyroJerk-std()-Y | Continuous
32 | timeBodyGyroJerk-std()-Z | Continuous
33 | timeBodyAccMag-mean() | Continuous
34 | timeBodyAccMag-std() | Continuous
35 | timeGravityAccMag-mean() | Continuous
36 | timeGravityAccMag-std() | Continuous
37 | timeBodyAccJerkMag-mean() | Continuous
38 | timeBodyAccJerkMag-std() | Continuous
39 | timeBodyGyroMag-mean() | Continuous
40 | timeBodyGyroMag-std() | Continuous
41 | timeBodyGyroJerkMag-mean() | Continuous
42 | timeBodyGyroJerkMag-std() | Continuous
43 | frequencyBodyAcc-mean()-X | Continuous
44 | frequencyBodyAcc-mean()-Y | Continuous
45 | frequencyBodyAcc-mean()-Z | Continuous
46 | frequencyBodyAcc-std()-X | Continuous
47 | frequencyBodyAcc-std()-Y | Continuous
48 | frequencyBodyAcc-std()-Z | Continuous
49 | frequencyBodyAccJerk-mean()-X | Continuous
50 | frequencyBodyAccJerk-mean()-Y | Continuous
51 | frequencyBodyAccJerk-mean()-Z | Continuous
52 | frequencyBodyAccJerk-std()-X | Continuous
53 | frequencyBodyAccJerk-std()-Y | Continuous
54 | frequencyBodyAccJerk-std()-Z | Continuous
55 | frequencyBodyGyro-mean()-X | Continuous
56 | frequencyBodyGyro-mean()-Y | Continuous
57 | frequencyBodyGyro-mean()-Z | Continuous
58 | frequencyBodyGyro-std()-X | Continuous
59 | frequencyBodyGyro-std()-Y | Continuous
60 | frequencyBodyGyro-std()-Z | Continuous
61 | frequencyBodyAccMag-mean() | Continuous
62 | frequencyBodyAccMag-std() | Continuous
63 | frequencyBodyBodyAccJerkMag-mean() | Continuous
64 | frequencyBodyBodyAccJerkMag-std() | Continuous
65 | frequencyBodyBodyGyroMag-mean() | Continuous
66 | frequencyBodyBodyGyroMag-std() | Continuous
67 | frequencyBodyBodyGyroJerkMag-mean() | Continuous
68 | frequencyBodyBodyGyroJerkMag-std() | Continuous

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
