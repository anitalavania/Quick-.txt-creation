#!/bin/sh

num=1001
check=0

while [ $num -lt 2076 ]

do

filename="D0D0barData_$num.root"

allfilenames=`ls D0D0barData*.root`

for rootfile in $allfilenames

do
if [ $rootfile == $filename ]
then
check=`expr $check + 1`
break

else
d=1

fi

done

if [ $check == 0 ]
then
echo "boss.condor -os SL6 D0D0barData$num.txt"
else
check=`expr $check - 1`
fi

num=`expr $num + 1`
done
