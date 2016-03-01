#!/bin/bash
TOKEN='951473cfb9adf638cb12eb994c2679e3'
URL='http://localhost:3000'
#URL="http://httpbin.org/post"

echo '-----------------------------------------'

curl ${URL}/items/2 \
  --silent \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "item":  {
        "todo": "Fuck this un hip shit Paper!"
      }
  }' | jsonlint
  # bcat -h
  # head -n 20
  #/Users/erdesi90562/wdi/projects/toDo/backend/tmp/junk/erro.html

# --silent
echo
echo '-----------------------------------------'
echo
