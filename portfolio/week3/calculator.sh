#!/bin/bash

echo "Enter your expression ie 1 + 1" 
read -a variables

if [ ${#variables[@]} != 3 ]; then
    choice="*"
else
    choice=${variables[1]}
fi

case  $choice in
	+)
        echo -ne "$BLUE${variables[0]} ${variables[1]} ${variables[2]} = "
		echo "${variables[0]} + ${variables[2]}" | bc 
		echo -e "$NORMAL"
	;;
	-)
		echo -ne "$GREEN${variables[0]} ${variables[1]} ${variables[2]} = "
		echo "${variables[0]} - ${variables[2]}" | bc 
		echo -e "$NORMAL"
	;;
	x)
		echo -ne "$RED${variables[0]} ${variables[1]} ${variables[2]} = "
		echo "${variables[0]} * ${variables[2]}" | bc 
		echo -e "$NORMAL"
	;;
    /)
		echo -ne "$PURPLE${variables[0]} ${variables[1]} ${variables[2]} = "
		echo "scale=2; ${variables[0]} / ${variables[2]}" | bc 
		echo -e "$NORMAL"
	;;
     *)
		echo "Incorect Opperator. See the following examples:"
        echo "1 + 1 (addition)"
        echo "1 - 1 (subtraction)"
        echo "1 x 1 (multiplication)"
        echo "1 / 1 (division)"
        echo -e "You entered $RED"
		for ic in "${variables[@]}"
		do
			echo -n "$ic"
		done
		echo -e "$NORMAL"
		unset variables
        ./calculator.sh
	;;
esac


