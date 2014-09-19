# Assumptions:
#	1. Features containing mean and standard deviation contains only the words :mean" and "std"
refDir<-"getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"

# Read Reference data - Activity Code and Feature Code
refActFile<-paste(refDir, "/activity_labels.txt", sep="")
refAct<-read.table(refActFile, sep="", header=FALSE)

refFtrFile<-paste(refDir, "/features.txt", sep="")
refFtr<-read.table(refFtrFile, sep="", header=FALSE)

# Get the feetures related to mean and standard deviation. This list will be used to extract only the measurements on the mean and standard deviation for each measurement.
reqFtr<-subset(refFtr, grepl("([Mm][Ee][Aa][Nn]|[Ss][Tt][Dd])", V2))

# Modify the Feature Names to be more descriptive. These names will be used as column names.
reqFtr$V2<-gsub("\\(\\)", "", reqFtr$V2)
reqFtr$V2<-gsub("-mean-", "Mean", reqFtr$V2)
reqFtr$V2<-gsub("-std-", "StdDev", reqFtr$V2)
reqFtr$V2<-gsub("tBody", "timeBody", reqFtr$V2)
reqFtr$V2<-gsub("fBody", "freqBody", reqFtr$V2)
reqFtr$V2<-gsub("Freq", "", reqFtr$V2)
reqFtr$V2<-gsub("tGravity", "timeGravity", reqFtr$V2)
reqFtr$V2<-gsub("-std", "StdDev", reqFtr$V2)
reqFtr$V2<-gsub("-mean", "Mean", reqFtr$V2)
reqFtr$V2<-gsub("BodyBody", "Body", reqFtr$V2)
reqFtr$V2<-gsub("-", "", reqFtr$V2)
reqFtr$V2<-gsub(",gravity", "Gravity", reqFtr$V2)
reqFtr$V2<-gsub("\\(t", "T", reqFtr$V2)
reqFtr$V2<-gsub("\\)", "", reqFtr$V2)
reqFtr$V2<-gsub("angle\\(", "angle", reqFtr$V2)
reqFtr$V2<-gsub("MeanGravityMean", "GravityMean", reqFtr$V2)

# Read and process Test Data (subject, X and Y)
testDir<-paste(refDir, "/test", sep="")

# 1. Process subject_test file
subTestFile<-paste(testDir, "/subject_test.txt", sep="")
subTest<-read.table(subTestFile, header=FALSE)
colnames(subTest)<-"subjectId"

# 2. process X_test file
xTestFile<-paste(testDir, "/X_test.txt", sep="")
xTest<-read.table(xTestFile, header=FALSE)
xTest<-xTest[,reqFtr$V1]
colnames(xTest)<-reqFtr$V2

# 3. process Y_test file
yTestFile<-paste(testDir, "/Y_test.txt", sep="")
yTest<-read.table(yTestFile, header=FALSE)

# function for adding descriptive activity names
addActivityLabel<-function(x) as.character(refAct[refAct$V1==x,]$V2)

# Add descriptive activity names
yTest$activityLabel<-sapply(yTest$V1, addActivityLabel)

# 4. Merge subject id, activity label and test data
testDat<-cbind(cbind(subTest, activityLabel=yTest$activityLabel), xTest)

# Read and Process Train Data (subject, X and Y)
trainDir<-paste(refDir, "/train", sep="")

# 1. Process subject_train file
subTrainFile<-paste(trainDir, "/subject_train.txt", sep="")
subTrain<-read.table(subTrainFile, header=FALSE)
colnames(subTrain)<-"subjectId"

# 2. process X_train file
xTrainFile<-paste(trainDir, "/X_train.txt", sep="")
xTrain<-read.table(xTrainFile, header=FALSE)
xTrain<-xTrain[,reqFtr$V1]
colnames(xTrain)<-reqFtr$V2

# 3. process Y_train file
yTrainFile<-paste(trainDir, "/Y_train.txt", sep="")
yTrain<-read.table(yTrainFile, header=FALSE)

# Add descriptive activity names
yTrain$activityLabel<-sapply(yTrain$V1, addActivityLabel)

# 4. Merge subject id, activity label and test data
trainDat<-cbind(cbind(subTrain, activityLabel=yTrain$activityLabel), xTrain)

# Merge training and test sets to create one data set.
tidyDat<-rbind(trainDat, testDat)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
aggrTidyData<-aggregate(tidyDat[,-c(1,2)], by=list(subjectId=tidyDat$subjectId, activityLabel=tidyDat$activityLabel), FUN=mean)

# Write the aggregated dataset into txt file.
write.table(aggrTidyData, file = "UCI_HAR_Summarized_Tidy_Data.txt", row.names=FALSE)



