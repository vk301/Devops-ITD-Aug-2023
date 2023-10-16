#!/bin/bash


test='my name is harsha'
# Using operators
out='no'

echo "Source String: $test"

if [[ $test =~ "$1" ]]; then 
    echo "1. The word name is in $test"
    out='yes'
fi 	

if [[ $test == *"$1"* ]]; then
    echo "2. The word name is in $test"
    out='yes' 
fi 

echo $test | grep -i "$1" &> /dev/null
if [[ $? -eq 0 ]]; then
    echo "3. The word name is in $test"
    out='yes'    
fi

if echo $test | grep -i "$1" &> /dev/null; then 
    echo "4. The word name is in $test"
    out='yes'
fi     

output="$(echo $test | grep -i "$1")"
if [[ -n "$output" ]]; then 
   echo "5. The word name is in $test"
   out='yes'
fi 

if [[ $out == 'no' ]]; then 
    echo "Word $1 not found $test"
fi
