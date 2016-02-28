#!/bin/bash
TOKEN='ee234250dddb1b8b86762f29212b9833'
echo 'Enter url after /'
read answer
curl http://localhost:3000/$answer \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

# data output from curl doesn't have a trailing newline
echo
