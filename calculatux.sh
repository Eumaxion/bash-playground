#!/bin/bash

#______ colors ________
green="\033[48;32m"
magen="\033[42;33m"
blue="\033[43;34m"
red="\033[44;31m"
cyan="\033[48;36m"
redwhite="\033[41;33m"
reset="\033[0m"

#_______ functions _______

is_number(){
	[[ "$1" =~ ^-?[0-9]+$ ]]
}
is_operation(){
	[[ "$1" =~ [+*/%-]$ ]]
}

#___________ calculator ___________

while true; do
        sleep 1
        echo ""
        echo -e "$redwhite calculator: $reset"
        read -p "first number: " a
	if ! is_number "$a"; then
		echo  -e "$red invalid number $reset"
		continue
	fi

        read -p "second number: " b
        if ! is_number "$b"; then
                echo  -e "$red invalid number $reset"
                continue
        fi

	read -p "operation (+, _, *, / or %): " op
	if ! is_operation "$op"; then
                echo  -e "$red invalid operator $reset"
                continue
        fi

	if [[ "$op" == "/" || "$op" == "%" ]] && (( b == 0 )); then
		echo -e "$red Cannot divide by zero $reset"
		continue
	fi
        case "$op" in
	    +) res=$((a + b)) ;;
	    -) res=$((a - b)) ;;
	    '*') res=$((a * b)) ;;
	    /) res=$((a / b)) ;;
	    %) res=$((a % b)) ;;
	esac
        echo "$a $op $b = -> $res"
        read -p "continue? y or n: " x
        if [ "$x" == "n" ]; then
                break
        fi
done
