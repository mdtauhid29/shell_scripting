#!/bin/bash

#dispaly hello
echo 'Hello'

#assign value to a variable
WORD='user'

#dis[play value using variable
echo "$WORD"

#display variable with har text
echo "welcome $WORD"

#using alternative syntax
echo "welcome ${WORD}"

#append text to variable
echo "${WORD}_1 is awesome"

#this doesnt work
echo "$WORD_1 is awesome"

#creating new varible and adding
OTH='_1'
echo "${WORD}${OTH} is awesome"

#reassign a value
OTH='_2'
echo "${WORD}${OTH} is awesome"
