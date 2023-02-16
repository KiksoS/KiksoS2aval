#!/bin/bash
c

total=0
media=0
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

resultado=$((total/media))
echo $resultado


