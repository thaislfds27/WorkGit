#!/bin/bash

# Contar quantos vôos precisaram ser redirecionados (Diverted).
cat 2006-sample.csv | cut -d"," -f24 |

# Buscar apenas marcação 1
grep -c 1 



