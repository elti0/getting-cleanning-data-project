#Getting and Cleanning Data Project.
#1 Merges the training and the test sets to create one data set.


train_set <- read.table("./samsung/train/X_train.txt")
train_lbl <- read.table("./samsung/train/y_train.txt")
train_sbj <- read.table("./samsung/train/subject_train.txt")


test_set <- read.table("./samsung/test/X_test.txt")
test_lbl <- read.table("./samsung/test/y_test.txt")
test_sbj <- read.table("./samsung/test/subject_test.txt")


one_set <- rbind(train_set, test_set)
one_lbl <- rbind(train_lbl, test_lbl)
one_sbj <- rbind(train_sbj,test_sbj)


#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("./samsung/features.txt")
mean_std <- grep("-(mean|std)\\(\\)", features[, 2])
one_set<- one_set[, mean_std]

#3 Use descriptive activity names to name the activities in the data set

activ_lbl <- read.table("./samsung/activity_labels.txt")
one_lbl[,1] <- activ_lbl[one_lbl[,1],2] 

#4 Appropriately label the data set with descriptive variable names
names(one_set) <- features[mean_std,2]
names(one_lbl) <- "Activity"
names(one_sbj) <- "Subject"

onedata <- cbind(one_sbj, one_lbl, one_set)
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
final_data <- ddply(onedata, .(Subject, Activity), function(x) colMeans(x[, 3:68]))
write.table(final_data, "tidy_data.txt", row.names = FALSE)
