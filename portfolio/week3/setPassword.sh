#!/bin/bash

#get the parent directory tree
tree ../

#get folder name
echo "Please enter a folder name from list above: "
read folderName

#get password
echo "please enter a pasword: "
read -s password

#pipe password into hash algorithim and output into txt file in folder previously selected
echo $password | sha256sum > "../$folderName/secret.txt"

exit 0