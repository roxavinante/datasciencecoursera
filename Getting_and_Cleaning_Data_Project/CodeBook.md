<h1>Human Activity Recognition Using Smartphones Dataset</h1>
Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Version 1.0<br />
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. <br />
Smartlab - Non Linear Complex Systems Laboratory <br />
DITEN - Università degli Studi di Genova. <br />
Via Opera Pia 11A, I-16145, Genoa, Italy. <br />
activityrecognition@smartlab.ws <br />
www.smartlab.ws<br />

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

<h3>For each record it is provided:</h3>

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
1. Triaxial Angular velocity from the gyroscope. 
1. A 561-feature vector with time and frequency domain variables. 
1. Its activity label. 
1. An identifier of the subject who carried out the experiment.

<h3>The dataset includes the following files:</h3>

1. 'README.txt'
1 'features_info.txt': Shows information about the variables used on the feature vector.
1. 'features.txt': List of all features.
1. 'activity_labels.txt': Links the class labels with their activity name.
1. 'train/X_train.txt': Training set.
1. 'train/y_train.txt': Training labels.
1. 'test/X_test.txt': Test set.
1. 'test/y_test.txt': Test labels.

<h3>The following files are available for the train and test data. Their descriptions are equivalent.</h3>

1. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
1. 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
1. 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
1. 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

<h3>Variables</h3>
Each row contains, for a given subject and activity, 79 averaged signal measurements.

**Identifiers**
* Subject - Subject identifier, integer, ranges from 1 to 30.
* Activity - Activity identifier, string with 6 possible values:
  * WALKING: subject was walking
  * WALKING_UPSTAIRS: subject was walking upstairs
  * WALKING_DOWNSTAIRS: subject was walking downstairs
  * SITTING: subject was sitting
  * STANDING: subject was standing
  * LAYING: subject was laying

<h3>Measurements</h3> 

1. Features are normalized and bounded within [-1,1].
1. Each feature vector is a row on the text file.

<h4>Time-domain signals</h4>

* Average time-domain body acceleration in the X, Y and Z directions:
  * tBodyAcc-mean-X
  * tBodyAcc-mean-Y
  * tBodyAcc-mean-Z
* Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
  * tBodyAcc-std-X
  * tBodyAcc-std-Y
  * tBodyAcc-std-Z
* Average time-domain gravity acceleration in the X, Y and Z directions:
  * tGravityAcc-mean-X
  * tGravityAcc-mean-Y
  * tGravityAcc-mean-Z
* Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
  * tGravityAcc-std-X
  * tGravityAcc-std-Y
  * tGravityAcc-std-Z
* Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * tBodyAccJerk-mean-X
  * tBodyAccJerk-mean-Y
  * tBodyAccJerk-mean-Z
* Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * tBodyAccJerk-std-X
  * tBodyAccJerk-std-Y
  * tBodyAccJerk-std-Z
* Average time-domain body angular velocity in the X, Y and Z directions:
  * tBodyGyro-mean-X
  * tBodyGyro-mean-Y
  * tBodyGyro-mean-Z 
* Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
  * tBodyGyro-std-X
  * tBodyGyro-std-Y
  * tBodyGyro-std-Z
* Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  * tBodyGyroJerk-mean-X
  * tBodyGyroJerk-mean-Y
  * tBodyGyroJerk-mean-Z
* Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
   * tBodyGyroJerk-std-X
   * tBodyGyroJerk-std-Y
   * tBodyGyroJerk-std-Z
* Average and standard deviation of the time-domain magnitude of body acceleration:
  * tBodyAccMag-mean
  * tBodyAccMag-std
* Average and standard deviation of the time-domain magnitude of gravity acceleration:
  * tGravityAccMag-mean
  * tGravityAccMag-std
* Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  * tBodyAccJerkMag-mean
  * tBodyAccJerkMag-std
* Average and standard deviation of the time-domain magnitude of body angular velocity:
  * tBodyGyroMag-mean
  * tBodyGyroMag-std
* Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  * tBodyGyroJerkMag-mean
  tBodyGyroJerkMag-std


<h4> Frequency-domain signals </h4>

* Average frequency-domain body acceleration in the X, Y and Z directions:
  * fBodyAcc-mean-X
  * fBodyAcc-mean-Y
  * fBodyAcc-mean-Z
* Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
  * fBodyAcc-std-X
  * fBodyAcc-std-Y
  * fBodyAcc-std-Z
* Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
  * fBodyAccJerk-mean-X
  * fBodyAccJerk-mean-Y
  * fBodyAccJerk-mean-Z
* Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * fBodyAccJerk-std-X
  * fBodyAccJerk-std-Y
  * fBodyAccJerk-std-Z
* Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:  
  * fBodyGyro-mean-X
  * fBodyGyro-mean-Y
  * fBodyGyro-mean-Z
* Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * fBodyGyro-std-X
  * fBodyGyro-std-Y
  * fBodyGyro-std-Z
* Average frequency-domain body angular velocity in the X, Y and Z directions:
  * fBodyAccMag-mean
  * fBodyAccMag-std
* Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
  * fBodyBodyAccJerkMag-mean
  * fBodyBodyAccJerkMag-std
* Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
  * fBodyBodyGyroMag-mean
  * fBodyBodyGyroMag-std
* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
  * fBodyBodyGyroJerkMag-mean
  * fBodyBodyGyroJerkMag-std

*For more information about this dataset contact: activityrecognition@smartlab.ws*


<h3>R script called run_analysis.R does the following.</h3>

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

*For more details on how these steps were implemented, please check out [README.md file](https://github.com/roxavinante/datasciencecoursera/blob/master/Getting_and_Cleaning_Data_Project/README.md).*

<h3>License:</h3>

Use of this dataset in publications must be acknowledged by referencing the following publication
* Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
