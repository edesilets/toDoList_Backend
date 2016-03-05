#!/bin/bash
LISTID='7'
TOKEN='d04dc1ee80d33f4cd62e59c83f3536ab'
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
