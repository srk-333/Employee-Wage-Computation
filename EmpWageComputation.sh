#!/bin/bash -x

echo "Welcome to employee Wage Computation program "

empCheck=$((RANDOM%3));

isFullTime=1;
isPartTime=2;
wagePerHr=20;

case $empCheck  in

          $isFullTime)
                          empWorkHr=10;;
          $isPartTime)
                           empWorkHr=8;;
          *)
                           empWorkHr=0;;
esac

salary=$(( $wagePerHr * $empWorkHr ));