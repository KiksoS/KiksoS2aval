#!/bin/bash
consumo=`cat consumo.txt | grep $1 | awk '{print $1}'`
linea=`cat ./consumo.txt | wc -l`

source ./cmedia.sh $1 > kk.txt


for i in `seq 2 $linea`
do
nombre=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $1}'`
if [ $1 == $nombre ];
    then
        consumo=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $4}'`
        total=$((total+consumo))
        ((media++))
    fi
done




if [ `cat kk.txt` -lt 400 ];then 

    echo "Es eco"
else 
    echo "No es eco"
fi