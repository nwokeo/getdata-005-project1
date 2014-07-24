#by O Nwoke
require(data.table)

#read files.
test_data <- read.table(file.path(getwd(), "test/X_test.txt")) #test data
test_labels <- read.table(file.path(getwd(), "test/y_test.txt"))#test labels
test_subjects <- read.table(file.path(getwd(), "test/subject_test.txt"))#test subjects

train_data <- read.table(file.path(getwd(), "train/X_train.txt")) #training data
train_labels <- read.table(file.path(getwd(), "train/y_train.txt"))#training labels
train_subjects<- read.table(file.path(getwd(), "train/subject_train.txt"))#training subjects

activity_labels <- read.table(file.path(getwd(), "activity_labels.txt"))#activity text descriptions
measurement_labels <- read.table(file.path(getwd(), "features.txt")) #measurement text descriptions

#1. Merges the training and the test sets to create one data set.
    all_data <- rbind(test_data,train_data)
    all_labels <- rbind(test_labels,train_labels)
    all_subjects <- rbind(test_subjects,train_subjects)

#4. Appropriately labels the data set with descriptive variable names. 
    colnames(all_data) <- measurement_labels$V2
    colnames(all_data) <- gsub('\\(\\)',"",colnames(all_data), perl = TRUE) #trim special characters
    colnames(all_data) <- gsub('-',"_",colnames(all_data), perl = TRUE) #trim special characters

#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    meanCols <- grep("*mean*",colnames(all_data))
    stdCols <- grep("*std*",colnames(all_data))
    keepCols <- c(meanCols,stdCols)
    
    all_data <- all_data[keepCols]

#3. Uses descriptive activity names to name the activities in the data set
    setnames(all_labels,"V1","Label")                             #set numeric label col name
    setnames(activity_labels,c("V1","V2"),c("Label","LabelText")) #set descriptive label col names
    setnames(all_subjects,"V1","Subject")                           #set subject col name

    all_labels <- merge(all_labels,activity_labels, all=TRUE, by="Label" ) #add text to label df
    #all_data$LabelText <- all_labels$LabelText   #equivalent
    all_data <-cbind(all_labels$LabelText,all_data)  #merge label into data document
    all_data <-cbind(all_subjects$Subject,all_data)  #merge subject into data document

    colnames(all_data)[1:2] <- c("Subject", "LabelText")

#5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    library(reshape2)

    meanCols <- grep("*mean*",colnames(all_data))
    stdCols <- grep("*std*",colnames(all_data))
    keepCols <- c(meanCols,stdCols)
    melt_data <- melt(all_data, id=c("Subject", "LabelText"), measure.vars=colnames(all_data[keepCols])) 
    
    ##thin
    dt <- data.table(melt_data) #create data table
    #dt_summ <- dt[, mean(value), by = c("Subject", "LabelText", "variable")] #aggregate

    ##fat
    dt2 <- data.table(all_data)
    dt_summ2 <- dt2[, lapply(.SD, mean, na.rm=TRUE), by=list(Subject,LabelText) ]

#test
mean(dt[dt$Subject == 2 & dt$LabelText == "WALKING" & dt$variable == "tBodyAcc_mean_X"]$value)


