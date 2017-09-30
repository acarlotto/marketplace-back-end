#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/listings/"
curl "${API}${URL_PATH}/2" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo
