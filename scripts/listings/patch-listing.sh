#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/listings/7"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "listing": {
      "name": "Frye Boots with pattern",
      "description": "Brown Leather and Size 9.5",
      "price": 126.00,
      "user_id": 1
    }
  }'

echo
