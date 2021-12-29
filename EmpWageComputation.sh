#!/bin/bash -x

echo "Welcome to employee Wage Computation program "

empCheck=$((RANDOM%2));

isPresent=1;
wagePerHr=20;
empWorkHr=8;

if [[ $isPresent -eq $empCheck ]]
  then 
      salary=$(( $wagePerHr * $empWorkHr ));
  else
      salary=0;
fi