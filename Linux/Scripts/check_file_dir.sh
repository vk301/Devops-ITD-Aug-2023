#!/bin/bash 

if [[ $# -lt 1 ]]; then 
   echo "Pass the path to check"
   exit 1
fi 	

if [[ $# -ge 2 ]]; then 
   echo "Only one path is allowed to check"
   exit 1
fi

# This if condition check $1 exists or not 
if ! [[ -e "$1" ]]; then
   echo "There is not such path (file or directory)"
   exit 1
fi

# This if condition check $1 is file or not  
if [[ -f "$1" ]]; then 
    echo "$1 - is a file"
fi 

# This if condition check $1 is directory or not 
if [[ -d "$1" ]]
then
    echo "$1 - is a Directory"	
fi
