# Getting and Cleaning Data wk4 Assignment
## load libraries
library(plyr); library(tidyr)
## set path to working directory
setwd("<path-to-working-directory>")

#1. Merges the training and the test sets to create one data set.
## check if the data directory exist, create if not exist
if(!file.exists("./data")){
    dir.create("./data")
}
## download zip file
urlStr="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipdata<- "./data/run.zip"
if(!file.exists(zipdata)) download.file(urlStr, zipdata)
list.files("./data")
runDir<-"./data/UCI HAR Dataset"
if(!file.exists(runDir)) unzip(zipdata, exdir = "./data")

## read train, test dataset
filepath<-paste(runDir,"train/X_train.txt", sep = "/")
train<- read.table(filepath)
filepath<-paste(runDir,"test/X_test.txt", sep = "/")
test<- read.table(filepath)


## read features dataset
filepath<-paste(runDir,"features.txt", sep = "/")
features<-read.table(filepath, stringsAsFactors = FALSE) 
featureNames<- features[,2] ## select feature names only


##merge train, test dataset, and feature names
all<- rbind(train, test)
colnames(all)<- featureNames

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
## find columns with names matching mean() or std()
colMatch<- grep("(mean|std)\\(\\)", names(all))
## extract only the features with matching column names
data<-all[, colMatch]

#3. Uses descriptive activity names to name the activities in the data set
## get the activity data
filepath<-paste(runDir,"train/y_train.txt", sep = "/")
ytrain<- read.table(filepath)
filepath<-paste(runDir,"test/y_test.txt", sep = "/")
ytest<- read.table(filepath)
## merge activity train and test datasets
yall<-rbind(ytrain, ytest)[,1]
## create activity names
activityLabels<- c("walking","walkingupstairs","walkingdownstairs","sitting","standing","laying")
activitylist <- activityLabels[yall]

#4. Appropriately labels the data set with descriptive variable names.
initcolnames<-names(data) ## backup the initial collumn names
names(data)<- gsub("^t", "time", names(data))
names(data)<- gsub("^f", "frequency", names(data))
names(data)<- gsub("-mean\\(\\)", "Mean", names(data))
names(data)<- gsub("-std\\(\\)", "StandardDev", names(data))
names(data)<- gsub("BodyBody", "Body", names(data))
names(data)<- gsub("-", "", names(data))

## read the subject data (train adn test data)
filepath<-paste(runDir,"train/subject_train.txt", sep = "/")
subjecttrain<- read.table(filepath)
filepath<-paste(runDir,"test/subject_test.txt", sep = "/")
subjecttest<- read.table(filepath)
## merge the subject tran and test data and create a list
subjectall<- rbind(subjecttrain,subjecttest)[,1]

## merge all the subject, activity, and features data
dt<- cbind(subject=subjectall, activity=activitylist, data)
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tmeans<- aggregate(dt[,-c(1,2)], by=list(ddt$subject, ddt$activity),mean,na.action = na.omit)

## define column name for the new dataframe
colnames(tmeans)[-c(1,2)]<- paste0("AVG", names(dtmeans)[-c(1,2)])
colnames(tmeans)[1:2]<- c("subject", "activity")

## write the result data table into file
filepath<-paste(runDir, "features_mean_of_subject_and_activity.txt", sep = "/")
write.table(tmeans, filepath, row.names = FALSE)

## return the result data frame
tmeans
