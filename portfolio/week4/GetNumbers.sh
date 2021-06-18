#!/bin/bash 
      
 
      
#This function prints a given error 
      
printError() 
      
{ 
      
    echo -e "\e[31mERROR:\033[0m $1 \e[0m" 
      
} 
      
 
      
#This function will get a value between the 2nd and 3rd arguments 
      
getNumber() 
      
{ 
      
    read -p "$1: " 
      
    while (( $REPLY != 42 )); do 
      if (( $REPLY < $2 || $REPLY > $3 )); then
        printError "Input must be between $2 and $3"
      elif (( $REPLY < 42 )); then
        echo "Too LOW! "
      elif (( $REPLY > 42 )); then
        echo "TOO HIGH! "
        fi
       read -p "$1: "
    done 
      
} 
      
 
      
echo "this is the start of the script" 
      
getNumber "please guess the number between 1 and 100" 1 100 
      
echo "You are Correct!" 
      

      
