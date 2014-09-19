##Getting and Cleaning Data Project  
  
###Overview  
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.   
  
Primary Tasks:    
1. Submit a tidy dataset on the Coursera Training site (see detail below)  
2. Submit a link to a Github repository containing:  
	- run_analysis.R: script for performing the analysis  
	- CodeBook.md: a code book that describes the variables, the data, and any transformations or work performed to clean up the data.  
	- This README.md file    
  
###Input files  
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
  
###General Description of the input files  
README.txt - README on source data     
  
activity_labels.txt - Labels of the activities. These are:    
1                      STANDING  
2                       SITTING  
3                        LAYING  
4                       WALKING  
5            WALKING_DOWNSTAIRS  
6              WALKING_UPSTAIRS  
  
  
features.txt - contains list of 561 features. For this project, only the mean and standard deviation features are used. The number of such features is 86.     
  
features_info.txt - contains detail of the features  
  
X_test.txt - contins the experiment data for all the subjcts. It has 2947 rows and 561 variables.    
  
subject_test.txt - list of the subjects for each observation. Total number of rows is 2947.    
  
y_test.txt - list of the activity labels for each observation. Total number of rows is 2947.    
  
X_train.txt - contins the experiment data for all the subjcts. It has 7352 rows and 561 variables.    
  
subject_train.txt - list of the subjects for each observation. Total number of rows is 7352.    
  
y_train.txt - list of the activity labels for each observation. Total number of rows is 7352.    
  
All other files have been ignored for this project.  
  
###General description of the variables  
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.   
  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).   
  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
  
  
###List of the variables in the aggregated tidy data  
  
1                         subjectId  
2                     activityLabel  
3                  timeBodyAccMeanX  
4                  timeBodyAccMeanY  
5                  timeBodyAccMeanZ  
6                timeBodyAccStdDevX  
7                timeBodyAccStdDevY  
8                timeBodyAccStdDevZ  
9               timeGravityAccMeanX  
10              timeGravityAccMeanY  
11              timeGravityAccMeanZ  
12            timeGravityAccStdDevX  
13            timeGravityAccStdDevY  
14            timeGravityAccStdDevZ  
15             timeBodyAccJerkMeanX  
16             timeBodyAccJerkMeanY  
17             timeBodyAccJerkMeanZ  
18           timeBodyAccJerkStdDevX  
19           timeBodyAccJerkStdDevY  
20           timeBodyAccJerkStdDevZ  
21                timeBodyGyroMeanX  
22                timeBodyGyroMeanY  
23                timeBodyGyroMeanZ  
24              timeBodyGyroStdDevX  
25              timeBodyGyroStdDevY  
26              timeBodyGyroStdDevZ  
27            timeBodyGyroJerkMeanX  
28            timeBodyGyroJerkMeanY  
29            timeBodyGyroJerkMeanZ  
30          timeBodyGyroJerkStdDevX  
31          timeBodyGyroJerkStdDevY  
32          timeBodyGyroJerkStdDevZ  
33               timeBodyAccMagMean  
34             timeBodyAccMagStdDev  
35            timeGravityAccMagMean  
36          timeGravityAccMagStdDev  
37           timeBodyAccJerkMagMean  
38         timeBodyAccJerkMagStdDev  
39              timeBodyGyroMagMean  
40            timeBodyGyroMagStdDev  
41          timeBodyGyroJerkMagMean  
42        timeBodyGyroJerkMagStdDev  
43                 freqBodyAccMeanX  
44                 freqBodyAccMeanY  
45                 freqBodyAccMeanZ  
46               freqBodyAccStdDevX  
47               freqBodyAccStdDevY  
48               freqBodyAccStdDevZ  
49               freqBodyAccMeanX.1  
50               freqBodyAccMeanY.1  
51               freqBodyAccMeanZ.1  
52             freqBodyAccJerkMeanX  
53             freqBodyAccJerkMeanY  
54             freqBodyAccJerkMeanZ  
55           freqBodyAccJerkStdDevX  
56           freqBodyAccJerkStdDevY  
57           freqBodyAccJerkStdDevZ  
58           freqBodyAccJerkMeanX.1  
59           freqBodyAccJerkMeanY.1  
60           freqBodyAccJerkMeanZ.1  
61                freqBodyGyroMeanX  
62                freqBodyGyroMeanY  
63                freqBodyGyroMeanZ  
64              freqBodyGyroStdDevX  
65              freqBodyGyroStdDevY  
66              freqBodyGyroStdDevZ  
67              freqBodyGyroMeanX.1  
68              freqBodyGyroMeanY.1  
69              freqBodyGyroMeanZ.1  
70               freqBodyAccMagMean  
71             freqBodyAccMagStdDev  
72             freqBodyAccMagMean.1  
73           freqBodyAccJerkMagMean  
74         freqBodyAccJerkMagStdDev  
75         freqBodyAccJerkMagMean.1  
76              freqBodyGyroMagMean  
77            freqBodyGyroMagStdDev  
78            freqBodyGyroMagMean.1  
79          freqBodyGyroJerkMagMean  
80        freqBodyGyroJerkMagStdDev  
81        freqBodyGyroJerkMagMean.1  
82      angleTimeBodyAccMeanGravity  
83  angleTimeBodyAccJerkGravityMean  
84     angleTimeBodyGyroGravityMean  
85 angleTimeBodyGyroJerkGravityMean  
86                angleXGravityMean  
87                angleYGravityMean  
88                angleZGravityMean  
  
  
  
###Process used:    
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
