#!/bin/bash
while true
do
#______testin commands____
echo "OPTIONS: "
echo "1) head;"
echo "2) tail;"
echo "0) exit;"

read -p "choose an option: " option
echo ""

case "$option" in
	0) exit ;;
	1)
	
		echo ""
		echo "head: "
		head test.sh
		echo ""
		;;
	2)
		echo "testing pipes n redirects"
		echo "cat test.sh | grep echo | wc -l > new.txt"
		cat test.sh | grep "echo" | wc -l > new.txt
		echo -n "result inside new.txt: " && cat new.txt
		echo ""
		;;
	*) echo "invalid"
esac
done
echo "_______________________________"


