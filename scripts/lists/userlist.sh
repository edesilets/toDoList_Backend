#!/bin/bash
TOKEN='cba6ee02717d92b8656b07236168e376'

curl http://localhost:3000/userlists \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

# data output from curl doesn't have a trailing newline
echo
