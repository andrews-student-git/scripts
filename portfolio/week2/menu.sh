#!/bin/bash

./passwordCheck.sh

if [ $? -eq 0 ]; then
	echo "1. Create a folder"
	echo "2. Copy a folder"
	echo "3. Set a password"
	read -p "Select an option: " userPick
else
	exit 1
fi

case $userPick in
	1)
		./foldermaker.sh
	;;
	2)
		./foldercopier.sh
	;;
	3)
		./setPassword.sh
	;;
esac