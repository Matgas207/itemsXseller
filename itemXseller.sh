#!/bin/bash   

#script itemXseller

varSeller=$1

curl -X GET https://api.mercadolibre.com/sites/MLA/search?seller_id=varSeller> 1.json    //obtengo los �tems en un file 1.json

jq "results.[] | {. id, .title, .category_id, .name} 1.json > file.log                  //filtro los datos y los escribo en un log

#fin script
