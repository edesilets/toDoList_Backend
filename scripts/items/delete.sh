#!/bin/bash
TOKEN='d04dc1ee80d33f4cd62e59c83f3536ab'
URL='http://localhost:3000'
#URL="http://httpbin.org/post"

echo '-----------------------------------------'

curl ${URL}/items/20 \
  --silent \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
echo
echo '-----------------------------------------'
echo
