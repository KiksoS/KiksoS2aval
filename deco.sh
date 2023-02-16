#! bin/bash

consumo=`cat consumo.txt | grep $1 | awk '{print $1}'`

source ./cmedia.sh $1 > kk.txt

if [ `cat kk.txt` -lt 400 ];then 

    echo "Es eco"
else 
    echo "No es eco"
fi