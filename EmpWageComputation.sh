#!/bin/bash -x

echo "Welcome to employee Wage Computation program "

empCheck=$((RANDOM%2));

isPresent=1;

if [[ $isPresent -eq $empCheck ]]
  then 
     echo "Emp is present";
  else
     echo "Emp is not present";
fi