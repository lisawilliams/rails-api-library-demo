curl --include --request POST http://localhost:4741/authors \
  --header "Content-Type: application/json" \
  --data '{
    "author": {
      "given_name": "Heather",
      "family_name": "Adels"
    }
  }'
