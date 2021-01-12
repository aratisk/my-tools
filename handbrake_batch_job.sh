#!/bin/bash


###############################################################################
# Script to recursively search a directory and batch convert all files of a given
# file type into another file type via HandBrake.
# Takes input from $source_dir and add transcoded files to $dest_dir. Note $base_dir needs to be added as a property, else will not work.
###############################################################################

#exit when any command fails. This is to cover the case when the base_dir has not been set correctly.
set -e

#TODO: can we move the values to property file
handbrake=HandBrakeCLI
base_dir="/mnt/d/Arati/ubuntu/handbrake_scripts"
source_dir="$base_dir/input/"
dest_dir="$base_dir/output/"
	

# Convert from one file to another
convert() {
	echo "" | $handbrake -i $1 -o $2  --preset="Fast 1080p30" -f av_mp4  
}

#TODO: check why this does not exit code, when directory not present.
if [ ! -d "$base_dir" ] 
	then
		echo "Exiting...no such folder"
	exit 111 
fi

#make the directory structure. Since we need only the folder structure inside the input folder,hence cd to it.
cd $source_dir
find . -type d -exec mkdir -p -- $dest_dir{} \;
cd ..


	# Find the files and pipe the results into the read command.  The read command properly handles spaces in directories and files names.
	#In order to correctly handle filenames containing whitespace and newline characters, you should use null delimited output. That's what the -print0 and read -d $'\0' is for.
	find "$source_dir" -name "*.mp4" -print0 | while IFS= read -r -d $'\0' in_file
	do
    	out_file=$(echo $in_file|sed 's/input/output/g')
		echo "INFO:Processing… >Input  "$in_file "to >Output "$out_file
		# Convert the file
		convert "$in_file" "$out_file"
		if [ $? != 0 ]
	        then
	            echo "ERROR:$in_file had problems" >> $base_dir/handbrake-errors.log
	        fi

		echo ">INFO:Finished "$out_file "\n\n"
	done

echo "DONE CONVERTING FILES"

#Final step: list all the mp4 files in input and output directories
find $source_dir -name '*.mp4' -type f |tee -a $base_dir/verify_ip.log
find $dest_dir -name '*.mp4' -type f |tee -a $base_dir/verify_op.log
#This appends a line at the end of file to say how many files are present in total.
wc -l $base_dir/verify_ip.log |  cut -d' ' -f1 >> $base_dir/verify_ip.log
wc -l $base_dir/verify_op.log |  cut -d' ' -f1>> $base_dir/verify_op.log

#TODO: add a email function here to email error logs if any and also the verify logs
