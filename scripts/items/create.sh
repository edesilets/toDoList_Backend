#!/bin/bash
LISTID='1'
TOKEN='f176e6983dad7321202b62a6f9c2f3c3'
URL='http://localhost:3000'
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
