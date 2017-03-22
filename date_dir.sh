#!/bin/bash

date_format="%C%y%m%d"

if [ -z "$1" ]
then
  dir_name=$(date +"$date_format")
elif [ "$1" == -y ]
then
  dir_name=$(date --date="yesterday" +"$date_format")
elif [ "$1" == -t ]
then
  dir_name=$(date --date="tomorrow" +"$date_format")
else
  echo "pass -y for yesterday or -t for tomorrow"
  echo "pass no argument for today"
  exit
fi

if [ -n $dir_name ]
then
  mkdir $dir_name
  exit
fi
