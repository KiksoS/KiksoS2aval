#! bin/bash

consumo=`cat consumo.txt | grep $1 | awk '{print $1}'`

source ./cmedia.sh $1

arch=`cat media.txt | head n1 `

echo $arch