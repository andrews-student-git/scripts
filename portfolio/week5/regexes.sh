#!/bin/bash

echo "SED Statements: "
#grep -r "sed" ../

echo "-------------------------------------"
echo "-------------------------------------"

echo "Lines that start with a letter m: "
grep -r "^m.*" ../

echo "-------------------------------------"
echo "-------------------------------------"

echo "Lines that have only 3 digits"
grep -r '\b[0-9]\{3\}\b' ../

echo "-------------------------------------"
echo "-------------------------------------"

echo "all echo statements with at least three words"
grep -r "^echo.*\(\\b\\w.*\\b\)\{3,\}"../

echo "-------------------------------------"
echo "-------------------------------------"
echo "Good Password Lines"
grep -r '[!@#$^&%]' ../ | grep '[a-z]' |  grep '[A-Z]' | grep '[0-9]'

