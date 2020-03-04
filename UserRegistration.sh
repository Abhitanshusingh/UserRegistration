#!/bin/bash -x
printf "Welcome to user registration\n"
read -p "Enter your first name :" firstName
firstNamePattern="^[A-Z][a-z]{2}"
if [[ $firstName =~ $firstNamePattern ]]
then
	printf "Valid\n"
else
	printf "In valid\n"
fi
