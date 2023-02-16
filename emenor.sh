#!/bin/bash
read -p "De que ciudad quieres calcular el consumo " ciudad
lineas=`cat ./consumo.txt | wc -l`

total=0
vueltas=0
for i in `seq 2 $lineas`
do
nombre=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $1}'`
if [ $ciudad == $nombre ];
    then
        consumo=`cat ./consumo.txt | head -n$i | tail -n1 | awk '{print $4}'`
        total=$((total+consumo))
        vueltas=$((vueltas+1))
    fi
done

resultado=$((total/vueltas))
echo "La media de $ciudad es $resultado"
sleep 5