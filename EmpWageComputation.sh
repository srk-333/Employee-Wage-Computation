#!/bin/bash -x

echo "Welcome to employee Wage Computation program "

empCheck=$((RANDOM%3));

isFullTime=1;
isPartTime=2;
wagePerHr=20;

if [[ $isFullTime -eq $empCheck ]]
       then 
           empWorkHr=10;
  elif [[ $isPartTime -eq $empCheck ]]
        then
              empWorkHr=8;
  else
             empWorkHr=0;
fi

salary=$(( $wagePerHr * $empWorkHr ));