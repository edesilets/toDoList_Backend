#!/bin/bash
TOKEN='373b2b8d33078acdcb85ecfbb3c4feea'
#URL='http://localhost:3000'
#URL="http://httpbin.org/post"
URL='https://todo-list-90562.herokuapp.com'

echo '-----------------------------------------'

curl ${URL}/items/20 \
  --silent \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
echo
echo '-----------------------------------------'
echo
