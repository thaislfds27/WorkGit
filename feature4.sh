#!/bin/bash
# Descobrir o vôo mais longo

# Pegar colunas de interesse ( número do vôo, horário de saida e horário de chegada)
cat 2006-sample.csv | cut -d"," -f5,7,10 |

# Cálculo do tempo de vôo
awk -F ',' '{ print $0 "," $2 - $1 }' |

# Pegar colunas de interesse (número de vôo e tempo de vôo)
cut -d"," -f3,4 | 


# Removendo títulos
tail -n +2 | 

# Invertendo a ordem das colunas de interesse
awk -F ',' '{ print $2 "," $1 }' |
# Ordenando do maior para o menor
sort -n |

# Pegando a ultima linha
tail -n1 |

# Pegando a segunda coluna (coluna do vôo)
cut -d"," -f2