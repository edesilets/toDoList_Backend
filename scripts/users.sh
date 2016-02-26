#!/bin/bash
TOKEN='cba6ee02717d92b8656b07236168e376'

curl http://localhost:3000/users \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

  echo
