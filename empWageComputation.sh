#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

#Checking of employee attendance
num=$((RANDOM%2))

if [ $num -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

#Calulate daily wage of employee
WagePerHour=20;
FullDay=8;
WagePerDay=$(($WagePerHour*$FullDay));

echo "Total wage per day :" $WagePerDay

PartTimeHour=8;
PartTimeWage=$(($WagePerHour*$PartTimeHour));
WorkingDayPerMonth=20;
TotalWagePerMonth=$(($WorkingDayPerMonth*$WagePerDay));

echo "Total Wage Per Month : "$TotalWagePerMonth

function getWorkHour(){
	case $1 in
		1 )
			WorkHour=8;;
		2 )
			WorkHour=8;;
		*)
			WorkHour=0;;
	esac
	echo "Work hour =" $WorkHour
}
WorkDonePerDay=$( getWorkHour $((RANDOM%3)) );


declare -a store #declare array to store wages with day
day=1;
while [ $day -le $WorkingDayPerMonth ]
do
	Wage=$(($WagePerDay*$day))
	day=$(($day+1));
	store[$day]=$Wage
done

declare -a array #Array store daily wage and monthly wage
array=($WagePerDay $TotalWagePerMonth)
echo "Daily wage along with Total wage :" ${array[@]}
echo "Wage for $day :" ${store[@]} #print wages day by day
