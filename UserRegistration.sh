#!/bin/bash
	echo "Welcome to User Registration Form."

        shopt -s extglob
		function  checkForValid(){
			userInput=$1
			pattern=$2
		   if [[ $userInput =~ $pattern ]]
		    then
			echo CORRECT
		    else
			echo FAIL
		    fi
		}



	   echo "Enter User First Name:"
   	    read firstName
		namePat="^[A-Z]{1}[a-z]{3,}$"
 		checkForValid "$firstName" $namePat


	echo "Enter User Last Name:"
	read lastName
	namePat="^[A-Z]{1}[a-z]{3,}$"
	checkForValid "$lastName" $namePat

        echo "Enter User Email:"
        read email

        emailPat="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"

	checkForValid "$email" $emailPat

	  echo "Enter User Valid Mobile Number:"
	   read mobile

   	mobilePat="^[0-9]{1,3}[[:space:]][0-9]{10}$"
	checkForValid "$mobile" $mobilePat

	   echo "Enter User Password:"
	   read pwd

       passwordPat="^A-Z[:upper:][a-zA-Z0-9]{8,}"
	checkForValid "$pwd" $passwordPat

            
