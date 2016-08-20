# Below is the code for run_analysis.R
# It has solutions for all Part1,2,3,4,5
# in seperate sections

#PART-1 
#Merges the training and the test sets to 
#create one data set.

train_x<-read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/train/X_train.txt",header = FALSE)
train_y<-read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/train/Y_train.txt",header = FALSE)
test_x <- read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/test/X_test.txt",header = FALSE)
test_y<-read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/test/Y_test.txt",header = FALSE)
subjects_train<-read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/train/subject_train.txt",header = FALSE)
subjects_test<-read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/test/subject_test.txt",header = FALSE)
merged_y<-merge(train_y,test_y)
merged_x<-merge(train_x,test_x)
merged_s<-merge(subjects_train,subjects_test)


#PART-2 
#Extracts only the measurements on the mean
#and standard deviation for each measurement.

features <- read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/features.txt",header = FALSE, sep = " ")
xtract<-features[grep("mean|std",tolower(features$V2)),]
indices<-rownames(xtract)
modified_x<-merged_x[as.numeric(indices),]


#PART-3
#Uses descriptive activity names to name the activities 
#in the data set
activity_labels <- read.table("C:/Users/gapekha/Documents/UCI HAR Dataset/activity_labels.txt",header = FALSE, sep = " ")
for (val in merged_y$V1)
  merged_y$V1=activity_labels[merged_y$V1,2]


#PART-4
#Appropriately labels the data set with descriptive 
#variable names.

names(merged_x)<-features$V2

#PART-5
#From the data set in step 4, creates a second, 
#independent tidy data set with the average of each 
#variable for each activity and each subject.

names(merged_y)<-c("activity_label")
names(merged_s)<-c("id")
final<-cbind(merged_x,merged_s,merged_y)
col<-grep("mean",tolower(names(finak)),value=TRUE)
new_dataset<-table(final$id,final$activity_label,col)
write(new_dataset, file = "C:/Users/gapekha/Documents/new_dataset.txt")