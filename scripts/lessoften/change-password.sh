#!/bin/bash
TOKEN=''
ID='1'

curl --include --request PATCH http://localhost:3000/change-password/${ID} \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "password",
      "new": "password"
    }
  }'

echo
