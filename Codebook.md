# Codebook for the UCI HAR Data 

## Introduction
The main goal of the project is to extract the respository raw file from the source and perform some cleaning, merging, and filtering to come up with a refined and tidy data set. The tidy data has three subsets which contain eight files.

### Subsets
The 3 subsets are the following: 'Subject', 'Activity', and 'Features'.
1. The subset 'Subject' comprises the files 'subject_train.txt' and 'subject_test.txt'.
2. The subset 'Activity' comprises the files 'y_train.txt' and 'y_test.txt'. Moreover, their description can be found on 'activity_labels.txt'
3. The subset "Features' comprises of the files 'X_train.txt' and 'X_test.txt'. Descriptions can be found on 'features.txt'.

## Data Source
The data source can be explicitly described as follows:
1. 'features.txt': Commonly known as (variables). This lists all the features in the data.
2. 'activity_labels.txt': This pertains to the class labels with their activity name.
3. 'X_train.txt': This is the Training set.
4. 'y_train.txt': This is the Training labels.
5. 'X_test.txt': This is the Test set.
6. 'y_test.txt': This is the set of Test labels.
7. 'subject_train.txt' and 'subject_test.txt': Each row identifies the subject who performed the activity for each window sample. 


## The Process of Producing the Tidy Data Set
1. Merging the training and testing sets to produce one full data set.
This process utilized the X_train.txt and X_test.txt to create features y_train.txt and y_test.txt. Same procedure applies to the activity data subject_train.txt and subject_test.txt. The output is a merged file.

2. Extracts only the measurements on the mean and standard deviation for each measurement.
The process utlized the features.txt to get only columns with mean() or std() and assigned again to all Data.

3.Uses descriptive activity names to name the activities in the data set.
activity_Labels.txt is used update values with correct activity names on all Data.

4. Appropriately labels the data set with descriptive variable names.
The process involved the use gsub function for pattern replacement to clean up the data labels.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The Process involved  extracting the data set with the average of each variable for each activity and subject. This now produce the 2nd tidy data set.


## Variables
* timeBodyAccelerometer-mean()-X
* timeBodyAccelerometer-mean()-Y 
timeBodyAccelerometer-mean()-Z
timeBodyAccelerometer-std()-X 
timeBodyAccelerometer-std()-Y
timeBodyAccelerometer-std()-Z 
timeGravityAccelerometer-mean()-X
timeGravityAccelerometer-mean()-Y 
timeGravityAccelerometer-mean()-Z
timeGravityAccelerometer-std()-X 
timeGravityAccelerometer-std()-Y
timeGravityAccelerometer-std()-Z 
timeBodyAccelerometerJerk-mean()-X
timeBodyAccelerometerJerk-mean()-Y 
timeBodyAccelerometerJerk-mean()-Z
timeBodyAccelerometerJerk-std()-X 
timeBodyAccelerometerJerk-std()-Y
timeBodyAccelerometerJerk-std()-Z 
timeBodyGyroscope-mean()-X
timeBodyGyroscope-mean()-Y 
timeBodyGyroscope-mean()-Z 
timeBodyGyroscope-std()-X
timeBodyGyroscope-std()-Y 
timeBodyGyroscope-std()-Z
timeBodyGyroscopeJerk-mean()-X 
timeBodyGyroscopeJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z 
timeBodyGyroscopeJerk-std()-X
timeBodyGyroscopeJerk-std()-Y 
timeBodyGyroscopeJerk-std()-Z
timeBodyAccelerometerMagnitude-mean()
timeBodyAccelerometerMagnitude-std()
timeGravityAccelerometerMagnitude-mean() 
timeGravityAccelerometerMagnitude-std()
timeBodyAccelerometerJerkMagnitude-mean()
timeBodyAccelerometerJerkMagnitude-std()
timeBodyGyroscopeMagnitude-mean()
timeBodyGyroscopeMagnitude-std() 
timeBodyGyroscopeJerkMagnitude-mean()
timeBodyGyroscopeJerkMagnitude-std() 
frequencyBodyAccelerometer-mean()-X
frequencyBodyAccelerometerJerkMagnitude-mean()
frequencyBodyGyroscopeJerkMagnitude-std()















