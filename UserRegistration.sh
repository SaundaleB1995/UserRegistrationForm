#!/bin/bash
	echo "Welcome to User Registration Form."

        shopt -s extglob
   echo "Enter User First Name:"
   read name


   namePat="^[A-Z]{1}[a-z]{3,}$"
function checkName(){
        if [[ $name =~ $namePat ]]
        then
                echo CORRECT;
        else
                echo FAIL;
        fi
}
        checkName
   echo "Enter User Last Name:"
   read  name
        checkName


