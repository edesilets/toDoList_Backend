#!/bin/bash
TOKEN='951473cfb9adf638cb12eb994c2679e3'
echo 'Enter url after /'
read answer
curl http://localhost:3000/$answer \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

# data output from curl doesn't have a trailing newline
echo
