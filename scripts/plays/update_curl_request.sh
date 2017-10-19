curl --include --request PATCH "http://localhost:4741/plays/${ID}" \
--header "Content-Type: application/json" \
--data '{
  "play":{
    "team": "'"${TEAM}"'",
    "play_result": "'"${PLAY_RESULT}"'"
  }
}'
