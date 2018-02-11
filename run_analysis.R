# This is a Project on Getting and Cleaning Data with the UCI HAR Dataset

#====================================PART 1 ==========================================
#This part intends to merge all the data sets (training and testing) into one full data set
#Merging the training and testing sets
subjectData <- rbind(subjectTrainSet, subjectTestSet) # Concatenating the tables by rows for subjectData
activityData <- rbind(activityTrainSet, activityTestSet) # Concatenating the tables by rows for activityData
featuresData <- rbind(featuresTrainSet, featuresTestSet) # Concatenating the tables by rows for featuresData

#Naming of Variables
names(subjectData) <- c("subject")
names(activityData) <- c("activity")
featuresnames <- read.table(file.path(path_rf, "features.txt"), head = FALSE)
names(featuresData) <- featuresnames$V2

#Combining columns to extract the full data frame for all data
combineData <- cbind(subjectData, activityData)
Data <- cbind(featuresData, combineData) #Merging all data
Data

#==================================== PART 2 ==========================================
#Extracting the measurements on the mean and standard deviation for each measurement
featuresnamesSubset <- featuresnames$V2[grep("mean\\(\\)|std\\(\\)", featuresnames$V2)]
extractedNames <- c(as.character(featuresnamesSubset), "subject", "activity")
Data <- subset(Data, select = extractedNames)
str(Data)


#==================================== PART 3 ==========================================
#Uses descriptive activity names to name the activities in the data set

#This portion replaces/converts the numerical value of the V1 into the descriptive activity names of V2
activityLabelSet <- read.table(file.path(path_rf, "activity_labels.txt"), header = FALSE)
Data$activity <- factor(Data$activity)
Data$activity <- factor(Data$activity, labels = as.character(activityLabelSet$V2))

#Displays the acivity labels of the 45 samples
head(Data$activity,45)



#==================================== PART 4 ==========================================

#Appropriately labels the data set with descriptive variable names. On this part, specific 
# features will be labelled using descriptive variable names with the following guide:
# ^t = time
# ^f = frequency
# Acc = Accelerometer
# Gyro = Gyroscope
# Mag = Magnitude
# BodyBody = Body

names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

#Testing the labelling witht their descriptive variable names
names(Data)


#==================================== PART 5 ==========================================
#This portion intends to produce a second independent tidy data set with the average
# of each variable for each activity and each subject based on the data set in PART 4.

#Calling the plyr package library
#This package is helpful in splitting, applying, and combining data
library(plyr);

#Aggregating the following variables for the second version of tidy data
DataVersion2<-aggregate(. ~subject + activity, Data, mean)
DataVersion2<-DataVersion2[order(DataVersion2$subject,DataVersion2$activity),]
write.table(DataVersion2, file = "tidydata.txt",row.name=FALSE)

#The second version tiny data set
DataVersion2







