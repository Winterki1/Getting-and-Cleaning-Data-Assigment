# Getting-and-Cleaning-Data-Assignment
Assignment for Getting and Cleaning Data - Peer reviewed

I will focus on explaining my approach rather than walk through the script step-by-step in this summary, as my script is separated into sections with commentary.

Firstly, as indicated in the Assignment ReadMe, I should highlight that this project is based on a dataset produced by Davide Anguita et al.; I have provided reference to the official publication at the end of this file.

Whilst the assignment instructions technically did not ask to include downloading the datafiles and reading the datasets in the script, I included these steps to ensure replicability.

Thereafter, I decided to follow the assignment instructions in the order presented in the project summary, although I suspect renaming variables could have been done more efficiently at an earlier stage, using the table provided in the features.txt file.
  
Regarding the extraction of mean and standard deviation for each measurement, I opted to include only the variables with a name ending in “-mean()”/”-std()”. I appreciate that this could have been interpreted differently (including also all variables with a “Mean” in the name). To be honest, my reason was simply to go with the smallest possible number of variables out of laziness… Kudos if you opted for the more extensive selection!
  
Choosing descriptive activity names: I didn’t feel too creative and stuck to the activity labels provided, but opted to change to lower case (except for the first letters), as this is slightly faster to type out in case someone wants to do some filtering on the dataset.

Choosing descriptive variable names: the lectures seemed to suggest writing whole words instead of abbreviations was preferable; other than that I thought the names provided in the features.txt file were fairly clear. Whilst the lectures also suggested ideally using only lower case and no special characters (like “_”), I felt in this instance some upper case and special characters helped readability.

I thought the instructions on step 5 were possibly slightly unclear; I decided to interpret them as asking to calculate the mean for each of the extracted measurement variables by subject and activity. I opted for the reshape2-library approach (melting into a tall data frame and then d-casting the variable averages), although perhaps grouping and summarizing in dplyr might be more elegant. 

I believe the resulting data set is “tidy” as each variable forms a column, each observation forms a row and the table only includes one kind of observation (experiment measurement data, rather than also e.g. background information on each subject). 

The TidyDataSet text file which I have uploaded to Coursera can be read into R using: read.table("[path]TidyDataSet.txt",header = TRUE).

Finally, when reviewing my CodeBook, please note the comment on normalization of variables, which is relevant for units of measurement. 

Thanks for your review!

---------------------------------------

References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
