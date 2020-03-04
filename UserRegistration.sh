#!/bin/bash -x
printf "Welcome to user registration\n"
#First name starts with Cap and has minimum 3 characters
function isFirstName()
{
	read -p "Enter your first name : "  firstName
	firstNamePattern="^[A-Z][a-z]{2}"
	if [[ $firstName =~ $firstNamePattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isFirstName

#Last name starts with Cap and has minimum 3 characters
function isLastName()
{
	read -p "Enter your last name : "  lastName
	lastNamePattern="^[A-Z][a-z]{2}"
	if [[ $lastName =~ $lastNamePattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isLastName

#Logic for to check valid email
function isEmail()
{
	read -p "Enter your email id : "  email
	emailPattern="^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}"
	if [[ $email =~ $emailPattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isEmail

#Logic for to check valid mobile number
function isMobileNumber()
{
	read -p "Enter your country code then mobile number : "  mobileNumber
	mobileNumberPattern="^[0-9]{2}[ ][0-9]{10}"
	if [[ $mobileNumber =~ $mobileNumberPattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isMobileNumber
