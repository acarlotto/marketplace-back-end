#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/listings"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "listing": {
      "name": "polo shirt",
      "description": "green",
      "price": 25.00,
      "user_id": 2
    }
  }'

echo
