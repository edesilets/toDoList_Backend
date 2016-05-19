#!/bin/bash
LISTID='7'
TOKEN='c3e441a22021340eccb40ff0b88e66b3'
URL='http://localhost:3000'
#URL="http://httpbin.org/post"

echo '-----------------------------------------'
echo '------Update List Name for a user--------'
echo '-----------------------------------------'
#   --silent
curl ${URL}/lists/${LISTID} \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "list": {
      "category": "Party Gifts"
    }
  }'
echo '-----------------------------------------'
echo
