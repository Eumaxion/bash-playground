#!/bin/bash
green="\033[48;32m"
magen="\033[42;33m"
blue="\033[43;34m"
red="\033[44;31m"
cyan="\033[48;36m"
redwhite="\033[41;33m"
reset="\033[0m"

sleep 1
echo ""
echo -e "$green ______Hello World, Temux_____$reset"

#____ using if _______

sleep 1
echo ""
echo -e "$blue using if and LS:$reset "
if ls; then
	echo ""
fi

#______comparation_________
#-eq    igual
#-ne    diferente
#-gt    maior que
#-lt    menor que
#-ge    maior ou igual
#-le    menor ou igual

#_____ using input _____
sleep 1
echo ""
echo -e "$green input$reset"
echo -e "$green insert name: $reset"
read name
sleep 1
echo -e "$green Salut $name$reset "
echo ""

#______ using args ____
sleep 1
echo -e "$red using args '$0' -> $0 $reser" 
echo -e "$red using args '$?' -> $? $reset" 
echo -e "$red using args '$@' -> $@ $reset" 
echo ""

#______ using for______
sleep 1
echo "test using for"
for i in $(seq 1 10)
do
	sleep 1
	if [ $((i % 2)) -eq 0 ]; then
		echo -e "$cyan $i is even$reset"
	else
		echo -e "$green $i is uneven$reset"
	fi
done

#_______ testing math ___
while true
do
	sleep 1
	echo ""
	echo -e "$redwhite calculator: $reset"
	read -p "first number: " a
	read -p "second number: " b
	read -p "operation (+, _, *, / or %): " op
	res=$((a "$op" b))
	echo "$a * $b = -> $res"
	read -p "continue? y or n: " x
	if [ "$x" == "n" ]; then
		break
	fi
done

sleep 1
echo ""
echo -e "$green using functions && files flags $reset"
file_exists() {

echo -e "$green choose a file to find if it exists: $reset"
read file

if [ -f "$file" ]; then
	echo -e "$blue file exist $reset"
else
	echo -e "$red file doesnt exists $reset"
fi
}

file_exists
file_exists
#-f arquivo    arquivo normal existe
#-d pasta      diretório existe
#-e caminho    caminho existe
#-r arquivo    pode ler
#-w arquivo    pode escrever
#-x arquivo    executável
echo "______________________________________________"
