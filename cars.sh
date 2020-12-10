#! /bin/bash
# cars.sh
# Paul Zhao

menuOption=0

echo "Cars.sh"
echo " "

while [ "$menuOption" -ne "3" ]
do

	echo "What would you like to do?"
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to save and exit the program"
	read -r menuOption

	case "$menuOption" in
		"1") echo "Enter the year of the car:"
		read -r year
		echo "Enter the make of the car:"
		read -r make
		echo "Enter the model of the car:"
		read -r model
		newCar="$year:$make:$model"
		echo "$newCar" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Thank you for using cars.sh";;
		*) echo "Sorry, that option is invalid";;
	esac

	echo " "

done

