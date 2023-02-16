#!/bin/bash

lineas=`cat ./consumo.txt | wc -l`

min=10000
max=0
liMax=0
liMin=0

for i in `seq 2 $lineas`
do
valor=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $4}'`

if [ $valor -gt $max ]
then
max=$valor
liMax=$i
fi
if [ $valor -lt $min ]
then
mim=$valor
liMin=$i
fi
done
echo `cat ./consumo.txt | head -n$liMax| tail -n1`
echo `cat ./consumo.txt | head -n$liMin| tail -n1`

