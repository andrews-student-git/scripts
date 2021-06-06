#!/bin/bash

read -sp  "Type your password: " userPassword

#pipe the password throgh sha and store as local variable
userHash=$(echo $userPassword | sha256sum) 

#get the stored password hash
storedPassword=$(cat secret.txt)

#compare both hash, add quotes as the hash values might have a space
if [ "$userHash" == "$storedPassword" ]; then
    echo "Access Granted"
    exit 0
else
    echo "Access Denied"
    exit 1
fi

