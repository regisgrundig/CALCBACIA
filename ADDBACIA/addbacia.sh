#!/bin/sh 


echo "</START/>" > ../UTIL/bacias.dat 

for bacia in `ls -1 ./BACIAS/*.bacia`
do 
name=`echo $bacia | cut -d"/" -f3 | cut -d"." -f1`
numlin=`wc -l $bacia | cut -d" " -f1`
echo "Incluindo :"$name " com: "$numlin" coordenadas"
echo "</BACIA/>"                               >>../UTIL/bacias.dat 
echo "</OPTIONS: "$name" NUMLIN= "$numlin" />" >>../UTIL/bacias.dat 
cat $bacia                                     >>../UTIL/bacias.dat   
done
echo "</END/>"                                 >> ../UTIL/bacias.dat 
