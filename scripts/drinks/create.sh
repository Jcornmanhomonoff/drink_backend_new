#!/bin/bash

curl "http://localhost:4741/drinks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "drink": {
      "name": "'"${NAME}"'",
      "alcohol": "'"${ALCOHOL}"'",
      "mixers": "'"${MIXERS}"'",
      "directions": "'"${DIRECTIONS}"'"
    }
  }'

echo
