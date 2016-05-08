Example AWK program to merge two CSV files that contain a common column/field value.

Usage:

gawk -f merge.awk parent.csv child.csv 

Will merge data from child.csv with that in parent.csv, using the common URL values in each file.

The code is described in the following blog post:

https://alex-sansom.info/content/using-gawk-merge-two-csv-files-common-field-value
