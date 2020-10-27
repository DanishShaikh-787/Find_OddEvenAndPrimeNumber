#! /bin/bash -x

read -p "take the n number from 1 : " num
for ((i=1; i<=$num ; i++))
do
	array[i]=$i
done

echo "Array : " ${array[@]}
echo "Array Index : " ${#array[@]}
#for even odd number
for (( i=1; i<=num; i++ ))
do

	n1=${array[i]}
	n=$(($n1%2))
	if [ $n -eq 0 ]
	then
		array1[j++]=$n1
	else
		array2[k++]=$n1
	fi
done
#for prime number
for (( i=1; i<=$num; i++ ))
do
        isPrime=0
        for (( j=2; j<$i; j++  ))
        do
                if [ $(($i%$j)) -eq 0 ]
                then
                        isPrime=1
                fi
        done
        if [ $isPrime == 0 ]
        then
                array3[l++]=$i
        fi
done

echo "Even Number : " ${array1[@]}
echo "Odd Number  : " ${array2[@]}
echo "Prime Number: " ${array3[@]}
