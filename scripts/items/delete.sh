#!/bin/bash
TOKEN='951473cfb9adf638cb12eb994c2679e3'
URL='http://localhost:3000'
#URL="http://httpbin.org/post"

echo '-----------------------------------------'

curl ${URL}/items/2 \
  --silent \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
echo
echo '-----------------------------------------'
echo
