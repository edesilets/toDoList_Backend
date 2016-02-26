#!/bin/bash
URL='http://localhost:3000'

echo 'json here is good :'
curl ${URL}/sign-up \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "test",
      "password": "password",
      "password_confirmation": "password"
    }
  }'

echo
echo '----------------------------------------------'
echo 'failure is good 400'

curl ${URL}/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "test",
      "password": "password",
      "password_confirmation": "password"
    }
  }'
echo
