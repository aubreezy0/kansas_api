#!/bin/bash

curl "http://localhost:4741/restaurants/{$ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
    --data '{
    "restaurant": {
      "restaurant_name": "'"${NAME}"'",
      "cuisine": "'"${CUISINE}"'"
    }
  }'

echo
