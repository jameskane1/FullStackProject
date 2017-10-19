curl --include --request POST "http://localhost:4741/plays" \
--header "Content-Type: application/json" \
--data '{
  "play":{
    "team": "'"${TEAM}"'",
    "yard_line": "'"${YARD_LINE}"'",
    "play_type": "'"${PLAY_TYPE}"'",
    "yards_gained": "'"${YARDS_GAINED}"'",
    "play_result": "'"${PLAY_RESULT}"'"
  }
}'
