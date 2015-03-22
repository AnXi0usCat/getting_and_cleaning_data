run_analysis <-
function(){
        # load the dyplyr package
        library(dplyr)
        
        # get the data from the working directory
        labels <- read.table(paste(getwd(), "activity_labels.txt", sep ="/"), header = FALSE)
        features <- read.table(paste(getwd(), "features.txt", sep ="/"), header = FALSE)
        sub_test <- read.table(paste(getwd(), "subject_test.txt", sep ="/"), header = FALSE)
        sub_train <- read.table(paste(getwd(), "subject_train.txt", sep ="/"), header = FALSE)
        x_test <- read.table(paste(getwd(), "X_test.txt", sep ="/"), header = FALSE)
        x_train <- read.table(paste(getwd(), "X_train.txt", sep ="/"), header = FALSE)
        y_test <- read.table(paste(getwd(), "y_test.txt", sep ="/"), header = FALSE)
        y_train <- read.table(paste(getwd(), "y_train.txt", sep ="/"), header = FALSE)
        
        # merge together the X taining and testing data
        x <- rbind.data.frame(x_test, x_train)
        # merge together the Y training and testing data
        y <- rbind.data.frame(y_test, y_train)
        # merge together the Subject training and testing data
        subject <- rbind.data.frame(sub_test, sub_train)
        
        # add names to features/activities, subjects and x/y values
        names(labels) <- c("activities", "activity_labels")
        names(features) <- c("feature_number", "feature")
        names(subject) <- "subject"
        names(x) <- features$feature
        names(y) <- "activities"
        xy_data <- cbind.data.frame(x,y)
        full_data <- cbind.data.frame(xy_data, subject)
        
        # get a sample which only contains mean() and std()
        sample <- full_data[,grep("subject|activities|-std\\()|-mean\\()", 
                                  names(full_data), value = T)]        
        
        # clean the names
        names(sample) <- gsub("-|,|\\.","_",names(sample))
        names(sample) <- gsub("\\()","", names(sample))

        # join the sample data with the lables data
        # to create an activites character vercor
        sample <- left_join(sample, labels)
        
        # reorder the columns
        sample = sample %>% select(subject, 
                          activity_labels, 
                          tBodyAcc_mean_X:fBodyBodyGyroJerkMag_std)
        
        # group by subject and by activity then summarize with mean and std
        output = sample %>% 
                group_by(subject,activity_labels) %>%
                summarise_each(funs(mean(.,na.rm = TRUE), sd(.,na.rm = TRUE)))
        
        output = data.frame(output)
        # rename the variables with moe describtive names
        names(output) <- gsub("mean$","average value", names(output))
        names(output) <- gsub("sd$","standard_deviation", names(output))
        names(output) <- gsub("_"," ", names(output))
        return(output)
}
