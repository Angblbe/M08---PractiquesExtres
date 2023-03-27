#!/bin/bash

fitxer=$1

#resolucion=`grep ^REMARK $fitxer | grep RESOLUTION -m 1 | awk '{print $4,$5}'`

#authors=`grep ^REMARK $fitxer | grep AUTHORS | awk '{print $5}'`

#echo La resolucion es: $resolucion y los autores son : $authors

grep ^SEQRES $fitxer | grep [[:blank:]]A[[:blank:]] | awk '{print $5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17}' | tr ' ' '\n' | grep ^[A-Z] | sort | uniq -c | sort -nr

#sort unic -c y wc -l
