# Feature Selection 


## From the original dataset:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The set of variables that was extracted from the orignal data set: 

mean(): Mean value
std(): Standard deviation

## Transformations made to the original data set:

The observations corresponding to the subject were added to the data set which is an integer
ranging from 1 to 30 this corresponds to the number of individuals tested. The variable is labled as "Subject".

The observations corresponding to the Activities the subjects had to perform were added to the
Data Set. These activities are factor variables, represented as strigs. They include:
* WALKING

* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING

* LAYING

They are labelled as the "activity lables" in the data set.

The feature varibles obtained from the original dataset were grouped according to the subject tested and the activity performed and the mean average and standard deviation value was taken
from each group. These subsets can be identified by the postfix "Average value" for mean and
"Standard Deviation" for Standard Deviation.

### Mean Values

 [1] "tBodyAcc mean X average value"          
 [2] "tBodyAcc mean Y average value"          
 [3] "tBodyAcc mean Z average value"          
 [4] "tBodyAcc std X average value"           
 [5] "tBodyAcc std Y average value"           
 [6] "tBodyAcc std Z average value"           
 [7] "tGravityAcc mean X average value"       
 [8] "tGravityAcc mean Y average value"       
 [9] "tGravityAcc mean Z average value"       
[10] "tGravityAcc std X average value"        
[11] "tGravityAcc std Y average value"        
[12] "tGravityAcc std Z average value"        
[13] "tBodyAccJerk mean X average value"      
[14] "tBodyAccJerk mean Y average value"      
[15] "tBodyAccJerk mean Z average value"      
[16] "tBodyAccJerk std X average value"       
[17] "tBodyAccJerk std Y average value"       
[18] "tBodyAccJerk std Z average value"       
[19] "tBodyGyro mean X average value"         
[20] "tBodyGyro mean Y average value"         
[21] "tBodyGyro mean Z average value"         
[22] "tBodyGyro std X average value"          
[23] "tBodyGyro std Y average value"          
[24] "tBodyGyro std Z average value"          
[25] "tBodyGyroJerk mean X average value"     
[26] "tBodyGyroJerk mean Y average value"     
[27] "tBodyGyroJerk mean Z average value"     
[28] "tBodyGyroJerk std X average value"      
[29] "tBodyGyroJerk std Y average value"      
[30] "tBodyGyroJerk std Z average value"      
[31] "tBodyAccMag mean average value"         
[32] "tBodyAccMag std average value"          
[33] "tGravityAccMag mean average value"      
[34] "tGravityAccMag std average value"       
[35] "tBodyAccJerkMag mean average value"     
[36] "tBodyAccJerkMag std average value"      
[37] "tBodyGyroMag mean average value"        
[38] "tBodyGyroMag std average value"         
[39] "tBodyGyroJerkMag mean average value"    
[40] "tBodyGyroJerkMag std average value"     
[41] "fBodyAcc mean X average value"          
[42] "fBodyAcc mean Y average value"          
[43] "fBodyAcc mean Z average value"          
[44] "fBodyAcc std X average value"           
[45] "fBodyAcc std Y average value"           
[46] "fBodyAcc std Z average value"           
[47] "fBodyAccJerk mean X average value"      
[48] "fBodyAccJerk mean Y average value"      
[49] "fBodyAccJerk mean Z average value"      
[50] "fBodyAccJerk std X average value"       
[51] "fBodyAccJerk std Y average value"       
[52] "fBodyAccJerk std Z average value"       
[53] "fBodyGyro mean X average value"         
[54] "fBodyGyro mean Y average value"         
[55] "fBodyGyro mean Z average value"         
[56] "fBodyGyro std X average value"          
[57] "fBodyGyro std Y average value"          
[58] "fBodyGyro std Z average value"          
[59] "fBodyAccMag mean average value"         
[60] "fBodyAccMag std average value"          
[61] "fBodyBodyAccJerkMag mean average value" 
[62] "fBodyBodyAccJerkMag std average value"  
[63] "fBodyBodyGyroMag mean average value"    
[64] "fBodyBodyGyroMag std average value"     
[65] "fBodyBodyGyroJerkMag mean average value"
[66] "fBodyBodyGyroJerkMag std average value"

### Standard Deviations

 [1] "tBodyAcc mean X standard deviation"          
 [2] "tBodyAcc mean Y standard deviation"          
 [3] "tBodyAcc mean Z standard deviation"          
 [4] "tBodyAcc std X standard deviation"           
 [5] "tBodyAcc std Y standard deviation"           
 [6] "tBodyAcc std Z standard deviation"           
 [7] "tGravityAcc mean X standard deviation"       
 [8] "tGravityAcc mean Y standard deviation"       
 [9] "tGravityAcc mean Z standard deviation"       
[10] "tGravityAcc std X standard deviation"        
[11] "tGravityAcc std Y standard deviation"        
[12] "tGravityAcc std Z standard deviation"        
[13] "tBodyAccJerk mean X standard deviation"      
[14] "tBodyAccJerk mean Y standard deviation"      
[15] "tBodyAccJerk mean Z standard deviation"      
[16] "tBodyAccJerk std X standard deviation"       
[17] "tBodyAccJerk std Y standard deviation"       
[18] "tBodyAccJerk std Z standard deviation"       
[19] "tBodyGyro mean X standard deviation"         
[20] "tBodyGyro mean Y standard deviation"         
[21] "tBodyGyro mean Z standard deviation"         
[22] "tBodyGyro std X standard deviation"          
[23] "tBodyGyro std Y standard deviation"          
[24] "tBodyGyro std Z standard deviation"          
[25] "tBodyGyroJerk mean X standard deviation"     
[26] "tBodyGyroJerk mean Y standard deviation"     
[27] "tBodyGyroJerk mean Z standard deviation"     
[28] "tBodyGyroJerk std X standard deviation"      
[29] "tBodyGyroJerk std Y standard deviation"      
[30] "tBodyGyroJerk std Z standard deviation"      
[31] "tBodyAccMag mean standard deviation"         
[32] "tBodyAccMag std standard deviation"          
[33] "tGravityAccMag mean standard deviation"      
[34] "tGravityAccMag std standard deviation"       
[35] "tBodyAccJerkMag mean standard deviation"     
[36] "tBodyAccJerkMag std standard deviation"      
[37] "tBodyGyroMag mean standard deviation"        
[38] "tBodyGyroMag std standard deviation"         
[39] "tBodyGyroJerkMag mean standard deviation"    
[40] "tBodyGyroJerkMag std standard deviation"     
[41] "fBodyAcc mean X standard deviation"          
[42] "fBodyAcc mean Y standard deviation"          
[43] "fBodyAcc mean Z standard deviation"          
[44] "fBodyAcc std X standard deviation"           
[45] "fBodyAcc std Y standard deviation"           
[46] "fBodyAcc std Z standard deviation"           
[47] "fBodyAccJerk mean X standard deviation"      
[48] "fBodyAccJerk mean Y standard deviation"      
[49] "fBodyAccJerk mean Z standard deviation"      
[50] "fBodyAccJerk std X standard deviation"       
[51] "fBodyAccJerk std Y standard deviation"       
[52] "fBodyAccJerk std Z standard deviation"       
[53] "fBodyGyro mean X standard deviation"         
[54] "fBodyGyro mean Y standard deviation"         
[55] "fBodyGyro mean Z standard deviation"         
[56] "fBodyGyro std X standard deviation"          
[57] "fBodyGyro std Y standard deviation"          
[58] "fBodyGyro std Z standard deviation"          
[59] "fBodyAccMag mean standard deviation"         
[60] "fBodyAccMag std standard deviation"          
[61] "fBodyBodyAccJerkMag mean standard deviation" 
[62] "fBodyBodyAccJerkMag std standard deviation"  
[63] "fBodyBodyGyroMag mean standard deviation"    
[64] "fBodyBodyGyroMag std standard deviation"     
[65] "fBodyBodyGyroJerkMag mean standard deviation"
[66] "fBodyBodyGyroJerkMag std standard deviation" 

