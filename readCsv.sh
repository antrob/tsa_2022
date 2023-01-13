#!/usr/bin/bash

OLDIFS=$IFS
IFS=';'

# A FAZER 
# Contar o maior comprimento do campo nome para melhorar a formatação

while read -r nome temrepo fezcommit
do
    #echo -e "$nome \t $temrepo \t $fezcommit"
    echo -e "$nome\n"
    echo $nome | wc -c
done < dados.csv

IFS=$OLDIFS