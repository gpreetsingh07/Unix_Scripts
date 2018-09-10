###################################################
# DESCRIPTION :- This script will find the duplicate files and delete them
# DATE :- 10-SEP-2018
# DEVELOPER :- GURPREET SINGH
####################################################
#set -x
#!/bin/sh

######VARIABLE SETTING PART

#create the log file name
logfile=`date +%Y%m%d-%H%M%S`

#Path from where files will be deleted
path="./log"

######VARIABLE SETTING ENDS


for ol_files in `ls $path`
do
	for il_files in `ls $path`
	do
		#check if the inner loop files and outer loop files are same or not
		if [ $ol_files == $il_files ]  && [ `stat -c %Y $path"/"$ol_files` -gt  `stat -c %Y $path"/"$il_files` ]  
		then
		echo $ol_files" ---- "$il_files
		fi
	done
done
