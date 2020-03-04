#!/bin/bash -x
printf "Welcome to user registration\n"
#First name starts with Cap and has minimum 3 characters
function isValidFirstName()
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
isValidFirstName

#Last name starts with Cap and has minimum 3 characters
function isValidLastName()
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
isValidLastName

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
function isValidMobileNumber()
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
isValidMobileNumber

#Logic for password
function isValidPassword()
{
	read -p "Enter password minimum 8 character : " userPassword
	passwordPattern="[a-zA-Z]{8,}"
	if [[ $userPassword =~ $passwordPattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isValidPassword
