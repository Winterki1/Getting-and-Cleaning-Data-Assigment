# Create data directory, download and unzip files
if(!file.exists("data")){ 
  dir.create("data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,"./data/temp.zip")
unzip("./data/temp.zip") #file will be unzipped into working directory 

# Read the text files into R data frames
Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Rename column names for subject and activity to avoid duplicate names after col-binding dfs
colnames(ytrain)<-"Activity"
colnames(subjecttrain)<-"Subject"
colnames(ytest)<-"Activity"
colnames(subjecttest)<-"Subject"

# Merge the data frames
train_combined <- cbind(subjecttrain,ytrain,Xtrain)
test_combined <- cbind(subjecttest,ytest,Xtest)
combined <-rbind(train_combined,test_combined)

# Extract only measurements on mean and standard deviation
library(dplyr)
selection <- select(combined,Subject,Activity,V1:V6,V41:V46,V81:V86,V121:V126,V161:V166, V201:V202,V214:V215,V227:V228,V240:V241,V253:V254,V266:V271,V345:V350,V424:V429,V503:V504,V516:V517,V529:V530,V542:V543)

# Relabel activities
selection$Activity <- gsub("1","Walking",selection$Activity)
selection$Activity <- gsub("2","Walking_upstairs",selection$Activity)
selection$Activity <- gsub("3","Walking_downstairs",selection$Activity)
selection$Activity <- gsub("4","Sitting",selection$Activity)
selection$Activity <- gsub("5","Standing",selection$Activity)
selection$Activity <- gsub("6","Laying",selection$Activity)

#Relabel variable names
colnames(selection) # this can be omitted - simply a reminder of the current column names for reference against features.txt
colnames(selection) <- c("Subject", "Activity", "BodyAcceleration_X_mean(time)", "BodyAcceleration_Y_mean(time)", "BodyAcceleration_Z_mean(time)", "BodyAcceleration_X_std(time)", "BodyAcceleration_Y_std(time)", "BodyAcceleration_Z_std(time)", "GravityAcceleration_X_mean(time)", "GravityAcceleration_Y_mean(time)", "GravityAcceleration_Z_mean(time)", "GravityAcceleration_X_std(time)", "GravityAcceleration_Y_std(time)", "GravityAcceleration_Z_std(time)", "BodyAccelerationJerk_X_mean(time)", "BodyAccelerationJerk_Y_mean(time)", "BodyAccelerationJerk_Z_mean(time)", "BodyAccelerationJerk_X_std(time)", "BodyAccelerationJerk_Y_std(time)", "BodyAccelerationJerk_Z_std(time)", "BodyGyro_X_mean(time)","BodyGyro_Y_mean(time)", "BodyGyro_Z_mean(time)", "BodyGyro_X_std(time)", "BodyGyro_Y_std(time)", "BodyGyro_Z_std(time)","BodyGyroJerk_X_mean(time)", "BodyGyroJerk_Y_mean(time)", "BodyGyroJerk_Z_mean(time)", "BodyGyroJerk_X_std(time)", "BodyGyroJerk_Y_std(time)", "BodyGyroJerk_Z_std(time)", "BodyAccelerationMagnitude_mean(time)","BodyAccelerationMagnitude_std(time)", "GravityAccelerationMagnitude_mean(time)", "GravityAccelerationMagnitude_std(time)", "BodyAccelerationJerkMagnitude_mean(time)", "BodyAccelerationJerkMagnitude_std(time)", "BodyGyroMagnitude_mean(time)", "BodyGyroMagnitude_std(time)", "BodyGyroJerkMagnitude_mean(time)", "BodyGyroJerkMagnitude_std(time)", "BodyAcceleration_X_mean(freq)", "BodyAcceleration_Y_mean(freq)", "BodyAcceleration_Z_mean(freq)", "BodyAcceleration_X_std(freq)", "BodyAcceleration_Y_std(freq)", "BodyAcceleration_Z_std(freq)", "BodyAccelerationJerk_X_mean(freq)", "BodyAccelerationJerk_Y_mean(freq)", "BodyAccelerationJerk_Z_mean(freq)", "BodyAccelerationJerk_X_std(freq)", "BodyAccelerationJerk_Y_std(freq)", "BodyAccelerationJerk_Z_std(freq)", "BodyGyro_X_mean(freq)", "BodyGyro_Y_mean(freq)", "BodyGyro_Z_mean(freq)", "BodyGyro_X_std(freq)", "BodyGyro_Y_std(freq)", "BodyGyro_Z_std(freq)", "BodyAccelerationMagnitude_mean(freq)", "BodyAccelerationMagnitude_std(freq)", "BodyAccelerationJerkMagnitude_mean(freq)", "BodyAccelerationJerkMagnitude_std(freq)", "BodyGyroMagnitude_mean(freq)", "BodyGyroMagnitude_std(freq)", "BodyGyroJerkMagnitude_mean(freq)", "BodyGyroJerkMagnitude_std(freq)")

# Create a tall table by Subject and Activity and then dcast to calculate means for each variable by Subject and Activity. View output
library(reshape2)
output <- melt(selection,id=c("Subject","Activity"))%>% 
  dcast(Subject + Activity ~ variable,mean)
View(output)

