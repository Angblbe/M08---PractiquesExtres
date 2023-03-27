#!/bin/bash

fitxer=$1

resolucion=`grep ^REMARK $fitxer | grep RESOLUTION -m 1 | awk '{print $4,$5}'`

authors=`grep ^REMARK $fitxer | grep AUTHORS | awk '{print $5}'`

echo La resolucion es: $resolucion y los autores son : $authors
