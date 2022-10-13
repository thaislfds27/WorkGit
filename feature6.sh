#!/bin/bash

# Filtrando as colunas de interesse (7, 8 e 9)
cat 2006-sample.csv | cut -d"," -f7,8,9 |

# Filtrando apenas companhia Delta Air Lines
grep DL |

# Subtraindo o horário de chegada pelo horário de chegada previsto
awk -F ',' '{ print $0 "," $1 - $2 }' |

# Tirando os horários negativos
grep -v - |

# Deixando apenas a coluna referente a atrasos da Delta Air Lanes
cut -d"," -f4 |

# Somando tempo de atraso da Delta AirLines
paste -sd+ | bc 