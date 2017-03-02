#!/bin/bash
# I've created an alias in ~/.bashrc to source this file
# i.e. 'alias =". /usr/local/bin/month_dir.sh"'
# then I just type "month"(-quotes) and it runs this script
dir_name=$(date +"%C%y-%m")
mkdir $dir_name
cd $dir_name
# the next line requires the script date_dir.sh to be in the user's path
date_dir.sh
