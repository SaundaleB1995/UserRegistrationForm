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


        echo "Enter User Email:"
        read email

        emailPat="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"

        if [[ $email =~ $emailPat ]]
        then
                echo CORRECT;
        else
                echo FAIL;
        fi


