#!/bin/bash
TOKEN='fe2935905d18398105f61d4f1d376ebd'
ID='1'

curl http://localhost:3000/sign-out/${ID} \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

  echo
