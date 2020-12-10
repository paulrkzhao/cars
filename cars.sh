#! /bin/bash
# cars.sh
# Paul Zhao

echo "This program will add cars to a file. Here is the menu of options:"
echo "Type \"1\" to Add a car"
echo "Type \"2\" to List the cars in the inventory file"
echo "Type \"3\" to Quit the program"

touch My_old_cars.txt

read -r OPTION

while [ "$OPTION" -eq "1" ] || [ "$OPTION" -eq "2" ]
do
	if [ "$OPTION" -eq "1" ]
	then
		echo "Enter the year:"
		read -r YEAR
		echo "Enter the make:"
		read -r MAKE
		echo "Enter the model:"
		read -r MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars.txt
		echo "Thank you, I have added your car to the file"
	fi
	if [ "$OPTION" -eq "2" ]
	then
		echo "==================="
		echo "File contents:"
		echo ""
		cat My_old_cars.txt
		echo "==================="
	fi
	echo "-----------------------------"
	echo "Type \"1\" to Add a car"
	echo "Type \"2\" to List the cars in the inventory file"
	echo "Type \"3\" to Quit the program"

	read -r OPTION
done
echo "========================"
echo "========================"
echo "Thank you. Please read My_old_cars.txt for info about your cars"

