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
