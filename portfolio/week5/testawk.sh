  GNU nano 4.8                                                                                     scrape.sh                                                                                               
#!/bin/bash
clean="$(curl -sL 'https://inteltechniques.com/blog/' | sed -n '{
s/&#[0-9]\{1,8\};//g
s/\[.*\]//g
s/^.*blog\/\([0-9]\+\/[0-9\+\/[0-9]\+\)\/.*rel="bookmark" title="\(.*\)".*$/\1 -  \2/p
#start of line followed by <p> tag (followed by anything) followed by space followed by < followed by end of line. Only didplay parenthasis
s/^.*<p>\(.*\) <.*$/\*\1\n/p

}')"


echo "Welcome to the scraping tool!"
echo "This tool will scrape article content from inteltechniques.com/blog"

echo "$clean" | awk '{
    BEGIN { 
    FS="*"; 
      
        
     printf("Welcome"); 
     
} 
      
{ 
    col1="\033[37m%-20s\033[0m";
    col2="\033[33m%-8s\033[0m";
    col3="\033[33m%-8s\033[0m";
    col4="\033[33m%-35s\033[0m";
    col5="\033[33m%-28s\033[0m";  
     printf( $0 ); 
    
      
} 
      
END { 
      
    print("done");
}' 