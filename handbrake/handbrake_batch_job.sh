#!/bin/bash

###############################################################################
# Script to recursively search a directory and batch convert all files of a given
# file type into another file type via HandBrake.
#Takes input from $source_dir and add transcoded files to the same directory with '-mod' suffix.
###############################################################################

handbrake=HandBrakeCLI
source_dir="/mnt/d/Arati/ubuntu/input"
#dest_dir="/mnt/d/Arati/ubuntu/output"
#currently we only have mp4 as input files ,but leaving this code in for compatibility
input_file_types=(avi wmv flv mp4 webm mov mpg)
output_file_type="mp4"


# Convert from one file to another
convert() {
	echo "" | $handbrake -i $1 -o $2  --preset="Fast 1080p30" -f av_mp4 -O -r 25 --pfr -b 2500 -2 -T -B 96 --verbose=1 
}

# loop over the types and convert
for input_file_types in "${input_file_types[@]}"
do

	# Find the files and pipe the results into the read command.  The read command properly handles spaces in directories and files names.
	#find "$source_dir" -name *.$input_file_type | while read in_file
	find "$source_dir" -name "*.$input_file_types" -print0 | while IFS= read -r -d $'\0' in_file
	#In order to correctly handle filenames containing whitespace and newline characters, you should use null delimited output. That's what the -print0 and read -d $'\0' is for.
	do
	
		# Replace the file type
		out_file_temp=$(echo $in_file|sed "s/\(.*\.\)$input_file_types/\1$output_file_type/g")
		#To add suffix to output file names.
		out_file=$(echo $out_file_temp|sed 's/.mp4$/-mod.mp4/g')
		#mkdir in destination folder and add files . currently commented as adding in same directory.
		#out_file=$(echo $out_file_temp|sed "s/$source_dir:$dest_dir:g")
		echo "INFO:Processing… >Input  "$in_file "to >Output "$out_file
		# Convert the file
		convert "$in_file" "$out_file"
		if [ $? != 0 ]
	        then
	            echo "ERROR:$in_file had problems" >> handbrake-errors.log
	        fi
		echo ">INFO:Finished "$out_file "\n\n"
	done
done
echo "DONE CONVERTING FILES"
