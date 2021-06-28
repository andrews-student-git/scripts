#!/bin/bash

../week2/passwordCheck.sh
excode=0
while [ $excode -eq 0 ]; do
	     	echo -e '\033[34m1. Create a folder\033[0m'
        	echo -e "\033[35m2. Copy a folder\033[0m"
        	echo -e "\033[36m3. Set a password\033[0m"
        	echo -e "\033[37m4. Calculator\033[0m"
        	echo -e "\033[32m5. Create Week Folders\033[0m"
        	echo -e "\033[31m6. Check filenames\033[0m"
        	echo -e "7. Download a file"
		echo -e '\033[34m8. Exit \033[0m'       
        	read -p "Select an option: " userPick

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
        	4)
                	./calculator.sh
        	;;
        	5)
               		../megaFolderMaker.sh
        	;;
        	6)
                	./checkfileNames.sh
        	;;
		7)
                	./downloader.sh
        	;;
		8)
               	echo "goodbye"
			$excode=1
			break

        	;;



	esac
done

