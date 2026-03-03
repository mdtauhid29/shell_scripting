#!/bin/bash

#Display the UID and username of user executing script
#display if user is vagrant or not

#display the UID
echo "your UID id ${UID}"

#only display if UID is not match 1000
TEST_UID='1000'
if [[ "${UID}" -ne "${TEST_UID}" ]]
then
	echo "your UID doesn,t match ${TEST_UID}"
	exit 1
fi

#display the username
USER_NAME=$(id -un)

#test if the command succeded
if [[ "${?}" -ne 0 ]]
then
	echo 'the id command didnt execute successfully'
	exit 1
fi
echo "your username is ${USER_NAME}"

#use a string test conditional
TEST_USERNAME='vagrant'
if [[ "${USER_NAME}" = "${TEST_USERNAME}" ]]
then
	echo "your username matches ${TEST_USERNAME}"
fi

#test for != for the string
if [[ "${USER_NAME}" != "${TEST_USERNAME}" ]]
then
	echo "your username doesnt match ${TEST_USERNAME}"
	exit 1
fi

exit 0
