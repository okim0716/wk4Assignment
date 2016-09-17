Feature Selection (See the additional note on preparing the tidy data at the end of the document)
=================

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


#data transformation
==================

1. Merge the training and the test sets to create one data set
2. Extract only the measurements on the mean and standard deviation for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Approapriate labels the data set with descriptive variable names ==> dt
5. From dt, create a independent tidy data set with the average of each variable for each activity and each subject


#in tidy dataset
==================

First dataset, dt, has Subject, Activity, and the mean and standard deviation for each measurement
Here are the name of the variables;
 [1] "subject"                                  
 [2] "activity"                                 
 [3] "AVGAVGtimeBodyAccMeanX"                   
 [4] "AVGAVGtimeBodyAccMeanY"                   
 [5] "AVGAVGtimeBodyAccMeanZ"                   
 [6] "AVGAVGtimeBodyAccStandardDevX"            
 [7] "AVGAVGtimeBodyAccStandardDevY"            
 [8] "AVGAVGtimeBodyAccStandardDevZ"            
 [9] "AVGAVGtimeGravityAccMeanX"                
[10] "AVGAVGtimeGravityAccMeanY"                
[11] "AVGAVGtimeGravityAccMeanZ"                
[12] "AVGAVGtimeGravityAccStandardDevX"         
[13] "AVGAVGtimeGravityAccStandardDevY"         
[14] "AVGAVGtimeGravityAccStandardDevZ"         
[15] "AVGAVGtimeBodyAccJerkMeanX"               
[16] "AVGAVGtimeBodyAccJerkMeanY"               
[17] "AVGAVGtimeBodyAccJerkMeanZ"               
[18] "AVGAVGtimeBodyAccJerkStandardDevX"        
[19] "AVGAVGtimeBodyAccJerkStandardDevY"        
[20] "AVGAVGtimeBodyAccJerkStandardDevZ"        
[21] "AVGAVGtimeBodyGyroMeanX"                  
[22] "AVGAVGtimeBodyGyroMeanY"                  
[23] "AVGAVGtimeBodyGyroMeanZ"                  
[24] "AVGAVGtimeBodyGyroStandardDevX"           
[25] "AVGAVGtimeBodyGyroStandardDevY"           
[26] "AVGAVGtimeBodyGyroStandardDevZ"           
[27] "AVGAVGtimeBodyGyroJerkMeanX"              
[28] "AVGAVGtimeBodyGyroJerkMeanY"              
[29] "AVGAVGtimeBodyGyroJerkMeanZ"              
[30] "AVGAVGtimeBodyGyroJerkStandardDevX"       
[31] "AVGAVGtimeBodyGyroJerkStandardDevY"       
[32] "AVGAVGtimeBodyGyroJerkStandardDevZ"       
[33] "AVGAVGtimeBodyAccMagMean"                 
[34] "AVGAVGtimeBodyAccMagStandardDev"          
[35] "AVGAVGtimeGravityAccMagMean"              
[36] "AVGAVGtimeGravityAccMagStandardDev"       
[37] "AVGAVGtimeBodyAccJerkMagMean"             
[38] "AVGAVGtimeBodyAccJerkMagStandardDev"      
[39] "AVGAVGtimeBodyGyroMagMean"                
[40] "AVGAVGtimeBodyGyroMagStandardDev"         
[41] "AVGAVGtimeBodyGyroJerkMagMean"            
[42] "AVGAVGtimeBodyGyroJerkMagStandardDev"     
[43] "AVGAVGfrequencyBodyAccMeanX"              
[44] "AVGAVGfrequencyBodyAccMeanY"              
[45] "AVGAVGfrequencyBodyAccMeanZ"              
[46] "AVGAVGfrequencyBodyAccStandardDevX"       
[47] "AVGAVGfrequencyBodyAccStandardDevY"       
[48] "AVGAVGfrequencyBodyAccStandardDevZ"       
[49] "AVGAVGfrequencyBodyAccJerkMeanX"          
[50] "AVGAVGfrequencyBodyAccJerkMeanY"          
[51] "AVGAVGfrequencyBodyAccJerkMeanZ"          
[52] "AVGAVGfrequencyBodyAccJerkStandardDevX"   
[53] "AVGAVGfrequencyBodyAccJerkStandardDevY"   
[54] "AVGAVGfrequencyBodyAccJerkStandardDevZ"   
[55] "AVGAVGfrequencyBodyGyroMeanX"             
[56] "AVGAVGfrequencyBodyGyroMeanY"             
[57] "AVGAVGfrequencyBodyGyroMeanZ"             
[58] "AVGAVGfrequencyBodyGyroStandardDevX"      
[59] "AVGAVGfrequencyBodyGyroStandardDevY"      
[60] "AVGAVGfrequencyBodyGyroStandardDevZ"      
[61] "AVGAVGfrequencyBodyAccMagMean"            
[62] "AVGAVGfrequencyBodyAccMagStandardDev"     
[63] "AVGAVGfrequencyBodyAccJerkMagMean"        
[64] "AVGAVGfrequencyBodyAccJerkMagStandardDev" 
[65] "AVGAVGfrequencyBodyGyroMagMean"           
[66] "AVGAVGfrequencyBodyGyroMagStandardDev"    
[67] "AVGAVGfrequencyBodyGyroJerkMagMean"       
[68] "AVGAVGfrequencyBodyGyroJerkMagStandardDev"

Second dataset, tmeans has Subject, Activity, and the average of each variable for each activity and each subject.
Here are the name of the variables;
 [1] "subject"                            
 [2] "activity"                           
 [3] "timeBodyAccMeanX"                   
 [4] "timeBodyAccMeanY"                   
 [5] "timeBodyAccMeanZ"                   
 [6] "timeBodyAccStandardDevX"            
 [7] "timeBodyAccStandardDevY"            
 [8] "timeBodyAccStandardDevZ"            
 [9] "timeGravityAccMeanX"                
[10] "timeGravityAccMeanY"                
[11] "timeGravityAccMeanZ"                
[12] "timeGravityAccStandardDevX"         
[13] "timeGravityAccStandardDevY"         
[14] "timeGravityAccStandardDevZ"         
[15] "timeBodyAccJerkMeanX"               
[16] "timeBodyAccJerkMeanY"               
[17] "timeBodyAccJerkMeanZ"               
[18] "timeBodyAccJerkStandardDevX"        
[19] "timeBodyAccJerkStandardDevY"        
[20] "timeBodyAccJerkStandardDevZ"        
[21] "timeBodyGyroMeanX"                  
[22] "timeBodyGyroMeanY"                  
[23] "timeBodyGyroMeanZ"                  
[24] "timeBodyGyroStandardDevX"           
[25] "timeBodyGyroStandardDevY"           
[26] "timeBodyGyroStandardDevZ"           
[27] "timeBodyGyroJerkMeanX"              
[28] "timeBodyGyroJerkMeanY"              
[29] "timeBodyGyroJerkMeanZ"              
[30] "timeBodyGyroJerkStandardDevX"       
[31] "timeBodyGyroJerkStandardDevY"       
[32] "timeBodyGyroJerkStandardDevZ"       
[33] "timeBodyAccMagMean"                 
[34] "timeBodyAccMagStandardDev"          
[35] "timeGravityAccMagMean"              
[36] "timeGravityAccMagStandardDev"       
[37] "timeBodyAccJerkMagMean"             
[38] "timeBodyAccJerkMagStandardDev"      
[39] "timeBodyGyroMagMean"                
[40] "timeBodyGyroMagStandardDev"         
[41] "timeBodyGyroJerkMagMean"            
[42] "timeBodyGyroJerkMagStandardDev"     
[43] "frequencyBodyAccMeanX"              
[44] "frequencyBodyAccMeanY"              
[45] "frequencyBodyAccMeanZ"              
[46] "frequencyBodyAccStandardDevX"       
[47] "frequencyBodyAccStandardDevY"       
[48] "frequencyBodyAccStandardDevZ"       
[49] "frequencyBodyAccJerkMeanX"          
[50] "frequencyBodyAccJerkMeanY"          
[51] "frequencyBodyAccJerkMeanZ"          
[52] "frequencyBodyAccJerkStandardDevX"   
[53] "frequencyBodyAccJerkStandardDevY"   
[54] "frequencyBodyAccJerkStandardDevZ"   
[55] "frequencyBodyGyroMeanX"             
[56] "frequencyBodyGyroMeanY"             
[57] "frequencyBodyGyroMeanZ"             
[58] "frequencyBodyGyroStandardDevX"      
[59] "frequencyBodyGyroStandardDevY"      
[60] "frequencyBodyGyroStandardDevZ"      
[61] "frequencyBodyAccMagMean"            
[62] "frequencyBodyAccMagStandardDev"     
[63] "frequencyBodyAccJerkMagMean"        
[64] "frequencyBodyAccJerkMagStandardDev" 
[65] "frequencyBodyGyroMagMean"           
[66] "frequencyBodyGyroMagStandardDev"    
[67] "frequencyBodyGyroJerkMagMean"       
[68] "frequencyBodyGyroJerkMagStandardDev"
