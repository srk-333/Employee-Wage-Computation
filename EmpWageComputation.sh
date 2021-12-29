#!/bin/bash -x

echo "Welcome to employee Wage Computation program "

isFullTime=1;
isPartTime=2;
wagePerHr=20;
workPerMonth=20;
workHr=100;

totalEmpHrs=0;
totalWorkingDays=0;

declare -A dailyWages

function getWorkHrs()
 {
     

   case $1 in
              

              $isFullTime)
                       
                             empWorkHr=16
;;
          
              $isPartTime)
                    
                            empWorkHr=8;;

                *)
                            empWorkHr=0;;       
 esac
 
     
  echo  $empWorkHr;
 

 }


function getEmpWage()
 {
	
      echo $(( $1*wagePerHr ))
}

while [[ $totalEmpHrs -lt workHr   &&  $totalWorkingDays -lt $workPerMonth ]]

    do
              ((totalWorkingDays++))
             empCheck=$((RANDOM%3));
             empWorkHr="$( getWorkHrs $empCheck )"
             totalEmpHrs=$(( $totalEmpHrs + empWorkHr ));
             dailyWages["Day "$totalWorkingDays]=$( getEmpWage $empWorkHr )

done

echo "Daily Wage = " ${dailyWages[@]};
echo ${!dailyWages[@]};

TotalSalary=$(( $wagePerHr * $totalEmpHrs * $workPerMonth ));
echo "Total Wage= " $TotalSalary;