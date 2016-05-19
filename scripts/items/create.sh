#!/bin/bash
LISTID='10'
TOKEN='c3e441a22021340eccb40ff0b88e66b3'
URL='https://todo-list-90562.herokuapp.com'
#URL='http://localhost:3000'
#URL="http://httpbin.org/post"
# list_items POST   /lists/:list_id/items(.:format)

echo '-----------------------------------------'

curl ${URL}/lists/${LISTID}/items \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "todo": "buy toy truck"
    }
  }' | jsonlint
  # bcat -h
  # head -n 20
echo
echo '-----------------------------------------'
echo
