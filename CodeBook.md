Codebook
====================
A code book that describes the variables, the data, and any transformations or work performed to clean up the data.

##Data Source
This data has been modified and tidied from the original, obtained from Human Activity Recognition Using Smartphones Data Set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Description from the original authors:

```
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."
```

##Transformations
From the original authors:

```
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."
```

##Variable Descriptions
This dataset sources the variable names from the original conventions described above. It excepts the following measurements:

mean(): Mean value
std(): Standard deviation

For example, the variable "tBodyAcc_mean_X" translates to the mean of time domain signal for body acclelration signal in X direction.

##Columns
* **Subject**

 An identifier of the subject who carried out the experiment.
* **Activity_Label**

  * WALKING
  * WALKING_UPSTAIRS
  *   WALKING_DOWNSTAIRS
  *   SITTING
  *   STANDING
  *   LAYING
* BodyAcc_mean_X
* BodyAcc_mean_Y
* BodyAcc_mean_Z
* GravityAcc_mean_X
* GravityAcc_mean_Y
* GravityAcc_mean_Z
* BodyAccJerk_mean_X
* BodyAccJerk_mean_Y
* BodyAccJerk_mean_Z
* BodyGyro_mean_X
* BodyGyro_mean_Y
* BodyGyro_mean_Z
* BodyGyroJerk_mean_X
* BodyGyroJerk_mean_Y
* BodyGyroJerk_mean_Z
* BodyAccMag_mean
* GravityAccMag_mean
* BodyAccJerkMag_mean
* BodyGyroMag_mean
* BodyGyroJerkMag_mean
* BodyAcc_mean_X
* BodyAcc_mean_Y
* BodyAcc_mean_Z
* BodyAcc_meanFreq_X
* BodyAcc_meanFreq_Y
* BodyAcc_meanFreq_Z
* BodyAccJerk_mean_X
* BodyAccJerk_mean_Y
* BodyAccJerk_mean_Z
* BodyAccJerk_meanFreq_X
* BodyAccJerk_meanFreq_Y
* BodyAccJerk_meanFreq_Z
* BodyGyro_mean_X
* BodyGyro_mean_Y
* BodyGyro_mean_Z
* BodyGyro_meanFreq_X
* BodyGyro_meanFreq_Y
* BodyGyro_meanFreq_Z
* BodyAccMag_mean
* BodyAccMag_meanFreq
* BodyBodyAccJerkMag_mean
* BodyBodyAccJerkMag_meanFreq
* BodyBodyGyroMag_mean
* BodyBodyGyroMag_meanFreq
* BodyBodyGyroJerkMag_mean
* BodyBodyGyroJerkMag_meanFreq
* BodyAcc_std_X
* BodyAcc_std_Y
* BodyAcc_std_Z
* GravityAcc_std_X
* GravityAcc_std_Y
* GravityAcc_std_Z
* BodyAccJerk_std_X
* BodyAccJerk_std_Y
* BodyAccJerk_std_Z
* BodyGyro_std_X
* BodyGyro_std_Y
* BodyGyro_std_Z
* BodyGyroJerk_std_X
* BodyGyroJerk_std_Y
* BodyGyroJerk_std_Z
* BodyAccMag_std
* GravityAccMag_std
* BodyAccJerkMag_std
* BodyGyroMag_std
* BodyGyroJerkMag_std
* BodyAcc_std_X
* BodyAcc_std_Y
* BodyAcc_std_Z
* BodyAccJerk_std_X
* BodyAccJerk_std_Y
* BodyAccJerk_std_Z
* BodyGyro_std_X
* BodyGyro_std_Y
* BodyGyro_std_Z
* BodyAccMag_std
* BodyBodyAccJerkMag_std
* BodyBodyGyroMag_std
* BodyBodyGyroJerkMag_std
