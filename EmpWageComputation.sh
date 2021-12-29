#!/bin/bash -x

echo "Welcome to employee Wage Computation program "

isFullTime=1;
isPartTime=2;
wagePerHr=20;
workPerMonth=20;
workHr=100;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt workHr   &&  $totalWorkingDays -lt $workPerMonth ]]

    do
	((totalWorkingDays++))
                 empCheck=$((RANDOM%3));

        case $empCheck  in

            $isFullTime)
                          empWorkHr=10;;
            $isPartTime)
                           empWorkHr=8;;
            *)
                           empWorkHr=0;;
esac

             totalEmpHrs=$(($totalEmpHrs + $empWorkHr));

done

TotalSalary=$(( $wagePerHr * $totalEmpHrs * $workPerMonth ));