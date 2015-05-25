#Introduction

This is a project course from Johns Hopkins Getting and Cleaning Data course on coursera.
Files anda data provided by instructors can be downloaded from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

#Data information

The information collected correspond to an experiment performed on a group of 30 volunteers 
were they need to perform activities with a Samsung smartphone.
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

#Project guidelines
  1  Merges the training and the test sets to create one data set.
  2  Extracts only the measurements on the mean and standard deviation for each measurement. 
  3  Uses descriptive activity names to name the activities in the data set
  4  Appropriately labels the data set with descriptive variable names. 
  5  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Variables

train_set load information from X_train.txt
train_lbl load information from y_train.txt
train_sbj load information from subject_train.txt

test_set load information from X_test.txt
test_lbl load information from y_test.txt
test_sbj load information from subject_test.txt

one_set merges train_set and test_set
one_lbl merges train_lbl and test_lbl
one_sbj merges train_sbj and test_sbj

features load information from features.txt
mean_std create the filter to obtain only the columns needed to work with
activ_lbl load the information from activity_labels.txt and it will be used to set names in the activity column
onedata is teh combined information from the other one_* variables to create on dataframe
final_data is the dataframe with the information needed to write to file.
