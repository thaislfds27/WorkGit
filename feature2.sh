#!/bin/bash

echo "O voo com maior atraso na chegada foi:"

# Pega apenas colunas necessárias para a análise (número do voo e ArrDelay)
cat 2006-sample.csv | cut -d"," -f10,15 |
# Remove o cabeçalho
tail -n +2 |
# Inverte as colnas
awk -F ',' '{ print $2 "," $1}' |
# Ordena do maior pro menor
sort -n |
# Pegar maior valor
tail -n1 |
# Pega apenas colunas necessárias para a análise (número do voo)
cut -d"," -f2