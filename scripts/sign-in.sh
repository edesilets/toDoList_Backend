#!/bin/bash

curl http://localhost:3000/sign-in \
  --silent \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "test",
      "password": "password"
    }
  }'

echo
