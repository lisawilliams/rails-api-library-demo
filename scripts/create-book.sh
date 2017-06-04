curl --include --request POST http://localhost:4741/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "This is a new book",
      "author_id": 2
    }
  }'
