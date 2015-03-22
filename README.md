### Describtion of the inner workings of run_analysis.R

## How to read in the textual file into R
If you wish to test the output of this script please use the text file
from Coursera and use the read.table() function with the following paramters
test<-read.table("file path", header = TRUE, check.names = FALSE)
 
## Purpose of Script run_analysis.R 
The run_analysis.R script is creted to transform the
orignal data from Human Activity Recognition Using 
Smart phones Data Set into a tidy table. 
Extract the values corresponding to mean and standart 
deviation of every observation.
Replace the activities with more readable activity lables
Add descriptive names to all of the features
Group the data by Subject and Activity variable and 
summarize the data by calculating the mean average and standart
deviation of evry feature.
The result is a 180 x 134 Data Frame. Please consult the 
Codebook.md to get a better understanding of it's structure.

## Prerequisites to running the run_analysis.R in R

Please ensure you have dplyr package installed on your Computer.
To install dplyr package run the following commands in R.
install.packages("dplyr")
library(dplyr)
The run analysis.R does not take any arguments. It does 
require for the text files from the original research to be
placed in your working directory. Please insure to not 
the change the names of the original files.
The run_analysis requires the follwing files to be placed
in the working directory to work correctly:
* activity_labels.txt
* features.txt
* subject_test.txt
* subject_train.txt
* X_test.txt
* X_train.txt
* y_test.txt
* y_train.txt

## Describtion of the run_analysis.R script

The script loads the loads in the original files
from the working directory in to R with the use of
read.table() function. This might take some time.

The it merges the  training and testing sets together
with the function rbind.data.frame(). This leads to 
a creation of three tables. X, Y and Subject.

With the use of names() function the script
adds the feature names to the X table and 
names the Y vector as "activities"

The X and Y and Subject datasets get merged togeter with
cbind.data.frame function
 
With the use of grep() function we extract the Subject, activities
and all of the features which contain measurements of s
tandard deviation and mean. The MeanFreq variables were not included.

Then the names of the variables get cleaned out of : ".", ",", "()", "-"
with the gsub() function.

The left_join() function from the dplyr package is used
to concatenate the Activites names with the data table.

The columns are arrangeg in the following order: Subject, 
Activity_Label, Features.

With the use of dplyr's group_by() and summarise_each() functions,
the means and standard deviations of all of the features are 
extracted and grouped by Subject and Activity_Labels.

"Standard Deviation" and "Average Value" are added to the end 
of transformed variable Names and "_" are replaces by white
spces to make the output names more readable with the gsub() function.


