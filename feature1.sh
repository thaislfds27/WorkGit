#!/bin/bash

echo "A companhia teve $1: "

# Verificar atraso criando nova coluna que diminuiu horario de partida de horário previsto de partida
awk -F ',' '{ print $0 "," $5 - $6 }' 2006-sample.csv |
# Deixar apenas colunas de interesse (Companhia e tempo de atraso)
cut -d"," -f9,30 |
# Deixar apenas linhas em que o atraso ocorreu. Removi tudo que tinha "-" no texto
grep -v - |
# Deixar aoenas coluna com nome da companhia
cut -d"," -f1 |
# Contar quantidade de vezes que a palavra aparece
grep -c $1

echo "Voos atrasados"