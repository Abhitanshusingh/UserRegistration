#!/bin/bash -x
printf "Welcome to user registration\n"
read -p "Enter your first name :" userInput1
read -p "Enter your last name  :" userInput2
read -p "Enter your email id   :" userInput3
#First name starts with Cap and has minimum 3 characters
function isFirstName()
{
	firstName=$1
	firstNamePattern="^[A-Z][a-z]{2}"
	if [[ $firstName =~ $firstNamePattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isFirstName $userInput1
#Last name starts with Cap and has minimum 3 characters
function isLastName()
{
	lastName=$1
	lastNamePattern="^[A-Z][a-z]{2}"
	if [[ $lastName =~ $lastNamePattern ]]
	then
		printf "Valid\n"
	else
		printf "In valid\n"
	fi
}
isLastName $userInput2\
#Logic for to check valid email
function isEmail()
{
	email=$1
	emailPattern="^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}"
	if [[ $email =~ $emailPattern ]]
   then
      printf "Valid\n"
   else
      printf "In valid\n"
   fi
}
isEmail $userInput3
