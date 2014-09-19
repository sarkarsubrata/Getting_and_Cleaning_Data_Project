##Getting and Cleaning Data Project  
  
###Overview  
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.   
  
Primary Tasks:    
1. Submit a tidy dataset on the Coursera Training site (see detail below)  
2. Submit a link to a Github repository containing:  
	- run_analysis.R: script for performing the analysis  
	- CodeBook.md: a code book that describes the variables, the data, and any transformations or work performed to clean up the data.  
	- This README.md file    
  
Source Data for this project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)    
  
###Assumptions  
  
- The working directory contains run_analysis.R file  
- The source zip file has been downloaded in the working directory and has been unzipped in the same directory. After unzip it should have the following directory structure and files under working directory:  
  
$ ls -R  
.:  
Instruction.docx                      getdata_projectfiles_UCI HAR Dataset.zip  
getdata_projectfiles_UCI HAR Dataset  
  
./getdata_projectfiles_UCI HAR Dataset:  
UCI HAR Dataset  
  
./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset:  
README.txt  activity_labels.txt  features.txt  features_info.txt  test  train  
  
./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test:  
Inertial Signals  X_test.txt  subject_test.txt  y_test.txt  
  
./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals:  
body_acc_x_test.txt  body_gyro_x_test.txt  total_acc_x_test.txt  
body_acc_y_test.txt  body_gyro_y_test.txt  total_acc_y_test.txt  
body_acc_z_test.txt  body_gyro_z_test.txt  total_acc_z_test.txt  
  
./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train:  
Inertial Signals  X_train.txt  subject_train.txt  y_train.txt  
  
./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals:  
body_acc_x_train.txt  body_gyro_x_train.txt  total_acc_x_train.txt  
body_acc_y_train.txt  body_gyro_y_train.txt  total_acc_y_train.txt  
body_acc_z_train.txt  body_gyro_z_train.txt  total_acc_z_train.txt  
  
- Any feature contining mean or standard deviation dat will have the words "mean", "std" (case insensitive) in the feature name  
  
###Data Analysis Process  
Here is the suggested process to create the tidy data:    
1.	Merges the training and the test sets to create one data set.  
2.	Extracts only the measurements on the mean and standard deviation for each measurement.   
3.	Uses descriptive activity names to name the activities in the data set  
4.	Appropriately labels the data set with descriptive variable names.   
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject  
  
Process used:    
0.	Verified the number of rows, columns and the number of features. (not included in the code)  
1. 	Read Reference data - Activity Code and Feature Code  
2.	Get the feetures related to mean and standard deviation. This list are used to extract only the measurements on the mean and standard deviation for each measurement.  
3.	Modify the Feature Names to be more descriptive. These names are used as column names.  
4.	Create function for adding descriptive activity names to main data sets  
5.	Read and process Test Data (subject, X and Y)  
	- Process subject_test file  
	- process X_test file  
	- process Y_test file  
	- Add descriptive activity names  
	- Merge subject id, activity label and test data  
6.	Read and process Train Data (subject, X and Y)  
	- Process subject_test file  
	- process X_test file  
	- process Y_test file  
	- Add descriptive activity names  
	- Merge subject id, activity label and test data  
7.	Merge training and test sets to create one data set  
8.	Create a second, independent tidy data set with the average of each variable for each activity and each subject  
9.	Write the aggregated dataset into txt file  
  
The output file gets created in the working directory. Name of the file is UCI_HAR_Summarized_Tidy_Data.txt  
  
