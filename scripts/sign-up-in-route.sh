#!/bin/bash
URL='http://localhost:3000'
#URL='https://todo-list-90562.herokuapp.com'
TOKEN='b994928552f0acf3ee019cde036b68bd'

sign-up () {
  echo '----------------------------------------------'
  echo 'json here is good :'
  echo '----------------------------------------------'
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

   return 0
}

sign-in () {
  echo '----------------------------------------------'
  echo  'sign IN.....'
  echo '----------------------------------------------'

  curl ${URL}/sign-in \
    --silent \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "jacob@statefarm.com",
        "password": "password"
      }
    }' | jsonlint
}

route () {
echo '----------------------------------------------'
echo 'Enter url after /'
echo '----------------------------------------------'

read answer
curl ${URL}/$answer \
  --silent \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" | jsonlint

# data output from curl doesn't have a trailing newline
echo
}


line=$(sed -n '2p' myfile)
echo "$line"
