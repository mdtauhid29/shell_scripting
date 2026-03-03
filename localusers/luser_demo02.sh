#!/bin/bash

#display UID and username of user executing the script
#display if the user irs root or not

#display UID
echo "Your UID is ${UID}"

#display the username
USER_NAME=$(id -un)
#USER_NAME=`id -un`
echo "Your username is ${USER_NAME}"

#display if user is root or not
if [[ "${UID}" -eq 0 ]]
then
	echo "You are root"
else
	echo "You are not root"
fi
