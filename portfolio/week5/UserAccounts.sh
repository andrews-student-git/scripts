#!/bin/bash 
          
awk '/bin\/bash$/' /etc/passwd | awk '
    function lineBrk(s){
        printf "|"
        for(i = 0; i < s; i++){
            printf "_"
        } 
    }
    
    BEGIN { 
    col1="\033[34m%-20s\033[0m";
    col2="\033[34m%-8s\033[0m";
    col3="\033[34m%-8s\033[0m";
    col4="\033[34m%-35s\033[0m";
    col5="\033[34m%-28s\033[0m";  
    FS=":"; 
      
        
     printf("| "col1" | "col2"  | "col3"  | "col4" | "col5" | \n",\
     "Username", "UserID", "GroupID", "Home", "Shell"); 
     
      print(\
            lineBrk(22)\
            lineBrk(11)\
            lineBrk(11)\
            lineBrk(37)\
            lineBrk(30) "|");
} 
      
{ 
    col1="\033[37m%-20s\033[0m";
    col2="\033[33m%-8s\033[0m";
    col3="\033[33m%-8s\033[0m";
    col4="\033[33m%-35s\033[0m";
    col5="\033[33m%-28s\033[0m";  
     printf("| "col1" | "col2"  | "col3"  | "col4" | "col5" | \n",\
     $1, $3, $4, $6, $7); 
    
      
} 
      
END { 
      
    print(\
            lineBrk(22)\
            lineBrk(11)\
            lineBrk(11)\
            lineBrk(37)\
            lineBrk(30) "|");
}' 
     