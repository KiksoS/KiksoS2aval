#!/bin/bash

linea=`cat ./consumo.txt | wc -l`
valor=0


for i in `seq 2 $linea`
do
nombre=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $1}'`
valor=$((valor+1))
    if [ $1 == $nombre ];
    then
        consumo=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $4}'`
        consumoTotal=$((consumoTotal+consumo))
    fi
done

echo $consumoTotal
