#!/bin/bash

echo "This is \$* printed"
  for i in "$*"; do
	echo $i	
  done 	  


echo "This is \$@ Printed"
  for i in "$@"; do
        echo $i
  done
