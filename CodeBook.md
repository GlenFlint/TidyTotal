---
title: "Summary Human Activity Recognition Using Smartphones Dataset"
author: "Glen Flint"
date: "October 18, 2015"
output: html_document
---

Study Design 
=================

This data is derived from:
```{r}
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
```
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc_XYZ and tGyro_XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc_XYZ and tGravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk_XYZ and tBodyGyroJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc_XYZ, fBodyAccJerk_XYZ, fBodyGyro_XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
```{r}
tBodyAcc_XYZ
tGravityAcc_XYZ
tBodyAccJerk_XYZ
tBodyGyro_XYZ
tBodyGyroJerk_XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc_XYZ
fBodyAccJerk_XYZ
fBodyGyro_XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
```
The set of variables that were estimated from these signals are: 
```{r}
mean(): Mean value
std(): Standard deviation
```
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
```{r}
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
```
This sample data was then averaged for each student for each activity. The complete list of summary variables:

##Code Book

| Name                       | Column  | Values             | Units   |
| -------------------------- | -------:| ------------------ | ------- |
|subject                     | 1       | 1-30               | NA      |
|activity                    | 2       | WALKING            | NA      |
|                            |         | WALKING_UPSTAIRS   |         |
|                            |         | WALKING_DOWNSTAIRS |         |
|                            |         | SITTING            |         |
|                            |         | STANDING           |         |
|                            |         | LAYING             |         |
|tBodyAcc_mean_X             | 3       | -1.0 to 1.0        | NA      |
|tBodyAcc_mean_Y             | 4       | -1.0 to 1.0        | NA      |
|tBodyAcc_mean_Z             | 5       | -1.0 to 1.0        | NA      |
|tBodyAcc_std_X              | 6       | -1.0 to 1.0        | NA      |
|tBodyAcc_std_Y              | 7       | -1.0 to 1.0        | NA      |
|tBodyAcc_std_Z              | 8       | -1.0 to 1.0        | NA      |
|tGravityAcc_mean_X          | 9       | -1.0 to 1.0        | NA      |
|tGravityAcc_mean_Y          | 10      | -1.0 to 1.0        | NA      |
|tGravityAcc_mean_Z          | 11      | -1.0 to 1.0        | NA      |
|tGravityAcc_std_X           | 12      | -1.0 to 1.0        | NA      |
|tGravityAcc_std_Y           | 13      | -1.0 to 1.0        | NA      |
|tGravityAcc_std_Z           | 14      | -1.0 to 1.0        | NA      |
|tBodyAccJerk_mean_X         | 15      | -1.0 to 1.0        | NA      |
|tBodyAccJerk_mean_Y         | 16      | -1.0 to 1.0        | NA      |
|tBodyAccJerk_mean_Z         | 17      | -1.0 to 1.0        | NA      |
|tBodyAccJerk_std_X          | 18      | -1.0 to 1.0        | NA      |
|tBodyAccJerk_std_Y          | 19      | -1.0 to 1.0        | NA      |
|tBodyAccJerk_std_Z          | 20      | -1.0 to 1.0        | NA      |
|tBodyGyro_mean_X            | 21      | -1.0 to 1.0        | NA      |
|tBodyGyro_mean_Y            | 22      | -1.0 to 1.0        | NA      |
|tBodyGyro_mean_Z            | 23      | -1.0 to 1.0        | NA      |
|tBodyGyro_std_X             | 24      | -1.0 to 1.0        | NA      |
|tBodyGyro_std_Y             | 25      | -1.0 to 1.0        | NA      |
|tBodyGyro_std_Z             | 26      | -1.0 to 1.0        | NA      |
|tBodyGyroJerk_mean_X        | 27      | -1.0 to 1.0        | NA      |
|tBodyGyroJerk_mean_Y        | 28      | -1.0 to 1.0        | NA      |
|tBodyGyroJerk_mean_Z        | 29      | -1.0 to 1.0        | NA      |
|tBodyGyroJerk_std_X         | 30      | -1.0 to 1.0        | NA      |
|tBodyGyroJerk_std_Y         | 31      | -1.0 to 1.0        | NA      |
|tBodyGyroJerk_std_Z         | 32      | -1.0 to 1.0        | NA      |
|tBodyAccMag_mean            | 33      | -1.0 to 1.0        | NA      |
|tBodyAccMag_std             | 34      | -1.0 to 1.0        | NA      |
|tGravityAccMag_mean         | 35      | -1.0 to 1.0        | NA      |
|tGravityAccMag_std          | 36      | -1.0 to 1.0        | NA      |
|tBodyAccJerkMag_mean        | 37      | -1.0 to 1.0        | NA      |
|tBodyAccJerkMag_std         | 38      | -1.0 to 1.0        | NA      |
|tBodyGyroMag_mean           | 39      | -1.0 to 1.0        | NA      |
|tBodyGyroMag_std            | 40      | -1.0 to 1.0        | NA      |
|tBodyGyroJerkMag_mean       | 41      | -1.0 to 1.0        | NA      |
|tBodyGyroJerkMag_std        | 42      | -1.0 to 1.0        | NA      |
|fBodyAcc_mean_X             | 43      | -1.0 to 1.0        | NA      |
|fBodyAcc_mean_Y             | 44      | -1.0 to 1.0        | NA      |
|fBodyAcc_mean_Z             | 45      | -1.0 to 1.0        | NA      |
|fBodyAcc_std_X              | 46      | -1.0 to 1.0        | NA      |
|fBodyAcc_std_Y              | 47      | -1.0 to 1.0        | NA      |
|fBodyAcc_std_Z              | 48      | -1.0 to 1.0        | NA      |
|fBodyAccJerk_mean_X         | 49      | -1.0 to 1.0        | NA      |
|fBodyAccJerk_mean_Y         | 50      | -1.0 to 1.0        | NA      |
|fBodyAccJerk_mean_Z         | 51      | -1.0 to 1.0        | NA      |
|fBodyAccJerk_std_X          | 52      | -1.0 to 1.0        | NA      |
|fBodyAccJerk_std_Y          | 53      | -1.0 to 1.0        | NA      |
|fBodyAccJerk_std_Z          | 54      | -1.0 to 1.0        | NA      |
|fBodyGyro_mean_X            | 55      | -1.0 to 1.0        | NA      |
|fBodyGyro_mean_Y            | 56      | -1.0 to 1.0        | NA      |
|fBodyGyro_mean_Z            | 57      | -1.0 to 1.0        | NA      |
|fBodyGyro_std_X             | 58      | -1.0 to 1.0        | NA      |
|fBodyGyro_std_Y             | 59      | -1.0 to 1.0        | NA      |
|fBodyGyro_std_Z             | 60      | -1.0 to 1.0        | NA      |
|fBodyAccMag_mean            | 61      | -1.0 to 1.0        | NA      |
|fBodyAccMag_std             | 62      | -1.0 to 1.0        | NA      |
|fBodyBodyAccJerkMag_mean    | 63      | -1.0 to 1.0        | NA      |
|fBodyBodyAccJerkMag_std     | 64      | -1.0 to 1.0        | NA      |
|fBodyBodyGyroMag_mean       | 65      | -1.0 to 1.0        | NA      |
|fBodyBodyGyroMag_std        | 66      | -1.0 to 1.0        | NA      |
|fBodyBodyGyroJerkMag_mean   | 67      | -1.0 to 1.0        | NA      |
|fBodyBodyGyroJerkMag_std    | 68      | -1.0 to 1.0        | NA      |


The dataset includes the following files:
=========================================

- 'README.md': Instructions on how to reproduce the summary dataset.

- 'CodeBook.md': This codebook which explains the experiment and the summary data.

- 'run_analysis.R': A R script used to produce the summary data from the original experiment's data.

- 'tidyTotal.txt': The summary data described in the table above.

The 'tidyTotal.txt' dataset may be read into an R data frame with the command:
```{r}
tidyTotal <- read.table("tidyTotal.txt", header = TRUE)
```

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about original experiment contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
