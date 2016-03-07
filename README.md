#run_analysis.R
<p>
This is for bug# 4567
run_analysis.R assumes that the Samsung data directory "UCI HAR Dataset" has been unzipped into the current working directory.  In order to merge the test and training dataset found in the directory "UCI HAR Dataset" into one dataset type:
</p>
```{r}
run_analysis
```
<p>
The resulting data frame contains a row keyed by subject and activity with the mean of those features that described the mean or standard deviation of the an observation.
</p>
<p>
The tidy dataset "tidyTotal.txt" is stored in the current working directory and also returned by this function. Read the tidy dataset back using:
</p>
```{r}
tidyTotal <- read.table("tidyTotal.txt", header = TRUE)
```
<p>
#Detailed description
<p>
This is what run_analysis.R does to produce the summary dataset, "tidyTotal.txt".
</p>
1. Remember the current working directory and set the working directory to "UCI HAR Dataset".
2. Read "activity_labels.txt" and "features.txt".  The "activity_labels.txt" will be used to clearly label the activity (WALKING, STANDING, etc.). The "features.txt" will be used to select which columns will be included in the summary dataset and label them.
3. Read in the test and training datasets each consisting of three files.  The three files identify the subject, activity, and the 561-feature vector with time and frequency domain variables for one observation.
4. The feature data is searched for those features that include std or mean.
5. The subject, activity, std, and mean features for both the test and training datasets are bound together in one data frame.
6. The new data frame columns are labeled 'subject', 'activity', and a cleaned version of the selected features that remove "()" and change "-" to "_" to be acceptable to R.
7. The activity column is changed from numeric to character (WALKING, STANDING, etc.).
8. The data frame is melted into a long, narrow dataframe keyed by subject and activity with each of the selected features listed in a separate row.
9. A new data frame is created that includes one row with the mean of every one of the selected features keyed by subject and activity.
10. Return to the original working directory and write "tidyTotal.txt" and return the tidy data frame as well.
