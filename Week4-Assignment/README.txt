==================================================================
Human Activity Recognition Using Smartphones TIDY Dataset 
Version 1.0
================================================================


For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'new_dataset.txt': Dataset

- 'run_analysis.R' : Script
	This script does the following :

1. 	Merges the training and the test sets to create one data 	set.

2. 	Extracts only the measurements on the mean and standard    	deviation for each measurement.

3. 	Uses descriptive activity names to name the activities in 	the data set

4. 	Appropriately labels the data set with descriptive 	variable 	names.

5.	From the data set in step 4, creates a second, independent 	tidy data set with the average of each variable for each 	activity and each subject.