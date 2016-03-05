#!/bin/bash
TOKEN='d04dc1ee80d33f4cd62e59c83f3536ab'
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'

echo '-----------------------------------------'
echo '-----------Read Users Lists--------------'
echo '-----------------------------------------'
curl ${URL}/lists \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

# data output from curl doesn't have a trailing newline
echo
