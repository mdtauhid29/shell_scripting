#!/bin/bash

#this script creates an account on the local system
#yoiu will be prompted for accountname and password


#ask username
read -p 'enter the username : ' USER_NAME

#ask realname
read -p 'enter real name : ' COMMENT

#ask password
read -p 'enter password: ' PASSWORD

#create user
useradd -c "${COMMENT}" -m ${USER_NAME}

#set password for user
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

#force password chanege on first login
passwd -e ${USER_NAME}

