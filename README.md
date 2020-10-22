# Getting-and-Cleaning-Data-Project
This repository is **Camilo Martinez** project submission for the coursera course with the repository name.
This file has the instructions to run the analysis over this [Human Activity Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) collected from the Samsung Galaxy S smartphone.

## Dataset
The dataset and all the information related is present in the `data` folder of this repository and it was obtained from the link above.

## Additional files
In addition to the original dataset, this repository contains three important files:

* `CodeBook.md`: A codebook of the project describing all the process performed to clean up the data, including data, variables and transformations applied.

* `run_analysis.R`: The R script that performs the 5 big steps followed to clean up and analyse the data, as given in the project definition. In the codebook it is explained how the first and second step are made simultaneously.
  + Merges the training and the test sets to create one data set.
  + Extracts only the measurements on the mean and standard deviation for each measurement.
  + Uses descriptive activity names to name the activities in the data set
  + Appropriately labels the data set with descriptive variable names.
  + From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* `final_tidy_data.txt`: The final exported data obtained after performing the analysis with the developed script in the original dataset.