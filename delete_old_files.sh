###################################################
# DESCRIPTION :- This script will find the old files and delete them
# DATE :- 09-SEP-2018
# DEVELOPER :- GURPREET SINGH
####################################################

#!/bin/sh

######VARIABLE SETTING PART

#create the log file name
logfile=`date +%Y%m%d-%H%M%S`

#Path from where files will be deleted
path="./"

#Files older than days to be deleted
daysold=15

######VARIABLE SETTING ENDS


#######DISPLAY MESSAGE

echo "**************"
sleep 1
echo "Script is starting"
sleep 1
echo "The script will delete the file from path "$path " which are older than " $daysold" days."
sleep 1
echo "**************"

######DISPLAY MESSAGE ENDS


echo "Below files were deleted from path "$path" as they were "$daysold"." >> ./log/"log_"$logfile".txt"

######LOOP STARTING PART

for files in `find $path -atime +$daysold 2>>./err/"err_"$logfile".txt"`
do
echo $files>>./log/"log_"$logfile".txt"
echo $files

############### -----> Please remove the below comment to delete the files
#rm -f $files

done

######LOOP ENDS



echo "*****************"
sleep 1
echo "Scripts ends"
sleep 1
echo "****************"
