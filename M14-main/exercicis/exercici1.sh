#!/bin/bash

#grep ^SEQRES 4duh.pdb | sed 's/SEQRES | sed 's/^[[:blank:]]//g' | grep ' B' 

fitxer=$1
autores=`grep ^AUTHOR $fitxer | awk '{print $2}'`

num=`echo $autores | tr ',' '\n' | wc -l`

echo hay $num autores que son: $autores
