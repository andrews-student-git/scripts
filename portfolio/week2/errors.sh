#!/bin/bash 
      
secret="shhh" #Don't tell anyone! 
      
#if the user types in the correct secret, tell them they got it right! 
read -s -p "what's the secret code?" $REPLY

if [ "$secret" = $REPLY ]; then 
      
    echo "You got it right!" 
      
    correct=true
      
else     echo "You got it wrong :(" 
      
    correct="false" 
      
fi 
 
      
case $correct in 
      
    true) 
      
    echo "you have unlocked the secret menu!" 
      
    ./menu.sh
      
    ;; 
    *) 
      
    echo "Go Away!" #people who get it wrong need to be told to go away! 
    exit 1  
    ;; 
      
esac 

exit 0