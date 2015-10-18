#run_analysis.R
<p>
run_analysis.R assumes that the Samsung data directory "UCI HAR Dataset" has been unzipped into the current working directory.  In order to merge the test and training dataset found in the directory "UCI HAR Dataset" into one dataset type:
</p>
```{r}
run_analysis
```
<p>
Only the mean of the measurement columns for mean and standard deviation are included.
</p>
<p>
The tidy dataset "tidyTotal.txt" is stored in the current working directory and also returned by this function. Read the tidy dataset back using:
</p.
```{r}
tidyTotal <- read.table("tidyTotal.txt", header = TRUE)
```