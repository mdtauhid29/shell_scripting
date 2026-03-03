#!/bin/bash
#
#this script create a new user on the local system.
#you will be prompted for username, name, password.
#username , password, host will be displayed

#make sure script is being executed with superuser previleges
if [[ "${UID}" -ne 0 ]]
then 
	echo 'please run with sudo or as root'
	exit 1
fi

#get the username(login)
read -p 'enter the username: ' USERNAME

#get the real name
read -p 'enter your real name: ' COMMENT

#get the password
read -p 'enter password: ' PASSWORD

#create user
adduser -c "${COMMENT}" -m  ${USERNAME}

#check if useradd succeded (not to show to  user)
if [[ "${?}" -ne 0 ]]
then
	echo 'the accont couldnt be created'
	exit 1
fi

#set password
echo ${PASSWORD} | passwd --stdin ${USERNAME}
if [[ "${?}" -ne 0 ]]
then
	echo 'password couldnt be set'
	exit 1
fi

#force password change on first login
passwd -e ${USERNAME}


#display username, password, hostname
echo
echo "username: ${USERNAME}"
echo "password: ${PASSWORD}"
echo "host    : ${HOSTNAME}"
exit 0



 

