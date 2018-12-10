# to build a simple calculator
echo "enter the first number:"
read n1
echo "enter the second number:"
read n2
echo "1:add 2:subtract 3:multiply 4:divide"
echo "enter your choice"
read ch
case $ch in
	1) echo "scale=2 ; $n1 + $n2"|bc;;
	2) echo "scale=2 ; $n1 - $n2"|bc;;
	3) echo "scale=2 ; $n1 * $n2"|bc;;
	4) echo "scale=2 ; $n1 / $n2"|bc;;
	*) echo "invalid";;
esac
