#!/bin/bash
TOKEN='c621a1064f9c7afedf3b43fd754b776a'

curl http://localhost:3000/lists \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

# data output from curl doesn't have a trailing newline
echo
