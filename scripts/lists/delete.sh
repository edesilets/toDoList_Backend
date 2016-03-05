#!/bin/bash
TOKEN='d04dc1ee80d33f4cd62e59c83f3536ab'
URL='http://localhost:3000'
#URL="http://httpbin.org/post"

echo '-----------------------------------------'
echo '------DELTE A List and its ITEMS---------'
echo '-----------------------------------------'

curl ${URL}/lists/6 \
  --silent \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
echo
echo '-----------------------------------------'
echo
