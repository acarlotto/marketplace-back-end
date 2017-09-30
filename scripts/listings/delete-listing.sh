#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/listings"
curl "${API}${URL_PATH}/1" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
  --data '{
    "listing": {
      "name": "Frye Boots",
      "description": "Brown Leather and Size 9",
      "price": 120.00,
      "user_id": 1
    }
  }'

echo
