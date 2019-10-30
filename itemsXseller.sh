#!/bin/bash   
#script itemXseller

 
echo "El seller id es=$1"

sleep 5

curl -X GET https://api.mercadolibre.com/sites/MLA/search?seller_id=$1 | jq -c '.results[].id','.results[].title','.results[].category_id' > file.log
curl -X GET https://api.mercadolibre.com/sites/MLA/search?seller_id=$1 | jq -c '.filters[]|.values[]|.name' >> file.log

#fin script


