Sample folder and files contents as below:
https://www.figma.com/file/4hEKVgaUAJp5YhhP0r5yaG/handbrake-folder

Currently I can see all input format is mp4 format so. 

1. Wsl or unix insatlled. 

2. Install Handbrake here: https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases
For detailed isntructions follow: https://linuxconfig.org/how-to-install-the-latest-version-of-handbrake-on-ubuntu

3. To run script .Download handbrake_batch_job.sh from github .If script does not work do a dos2unix. command: sudo apt-get install dos2unix. 


To test the scripts :
==============

1) Copy over the input_template folder. contains test files.
2) Copy over the template folder to input. leave the original tempalte folder to add/remove files while testing is in progress from the input folder.
3) Edit parent_dir in the script handbrake_batch_job.sh.
4) Run script handbrake_batch_job.sh and verify output vs input from the files verify_ip.log,verify_op.log. you can run wc -l <filename> if the number of files are too many.
5) (NOTE: deletes files so check the script contents before running).Run cleanup.sh . This copies over the contents of input_template so if you have added/modified files/file-structure, this will be reflected in input folder.

for numfit use very fast 720p30 and web optimised. Make sure aspect ratio is 16:9

other examples: https://superuser.com/questions/394516/how-to-convert-50-episodes-from-dvd-into-50-mp4-with-handbrake-easily
