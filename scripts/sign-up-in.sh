#!/bin/bash
URL='http://localhost:3000'

echo 'json here is good :'
curl ${URL}/sign-up \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jacob@statefarm.com",
      "password": "password",
      "password_confirmation": "password"
    }
  }'

echo '----------------------------------------------'
echo  'sign IN.....'
echo '----------------------------------------------'

curl http://localhost:3000/sign-in \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jacob@statefarm.com",
      "password": "password"
    }
  }' | jsonlint
