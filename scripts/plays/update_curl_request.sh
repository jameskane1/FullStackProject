curl --include --request PATCH "http://localhost:4741/plays/${ID}" \
--header "Content-Type: application/json" \
--data '{
  "play":{
    "user_id": "'"${USER_ID}"'"
  }
}'
