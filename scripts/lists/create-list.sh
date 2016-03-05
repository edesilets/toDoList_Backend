#!/bin/bash
TOKEN='d04dc1ee80d33f4cd62e59c83f3536ab'
URL='http://localhost:3000'
#URL="http://httpbin.org/post"

echo '-----------------------------------------'
echo '------CREATE a List Name a USER----------'
echo '-----------------------------------------'
curl ${URL}/lists \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "list": {
      "category": "Party Gifts",
      "user_id": 3
    }
  }' | jsonlint
  # bcat -h
  # head -n 20
  #/Users/erdesi90562/wdi/projects/toDo/backend/tmp/junk/erro.html

# --silent
echo
echo '-----------------------------------------'
echo
