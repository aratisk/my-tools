Sample folder and files contents as below:
https://www.figma.com/file/4hEKVgaUAJp5YhhP0r5yaG/handbrake-folder

Currently I can see all input format is mp4 format so. 

1. Wsl or unix insatlled. 

2. Install Handbrake here: https://launchpad.net/~stebbins/+archive/ubuntu/handbrake-releases
For detailed isntructions follow: https://linuxconfig.org/how-to-install-the-latest-version-of-handbrake-on-ubuntu

3. To run script .Download handbrake_batch_job.sh from github .If script does not work do a dos2unix. command: sudo apt-get install dos2unix. 

4.Source input format can be any of: avi wmv flv mp4 webm mov mpg. IMP:Edit source_dir in the script before you run script. All output will be in same folder with -mod suffix.