#!/bin/bash
# Filtrando as colunas de interesse (5, 6 e 17)
cat 2006-sample.csv | cut -d"," -f5,6,17 |

# Filtrando apenas vôos saídos de JFK
grep JFK |

# Subtraindo o horário de saída pelo horário de saída previsto
awk -F ',' '{ print $0 "," $1 - $2 }' |

# Tirando os horários negativos
grep -v - |

# Deixando apenas a coluna referente a atrasos de saída de JFK
cut -d"," -f4 |

# Somando tempo de atraso de saída de JFK
paste -sd+ | bc 