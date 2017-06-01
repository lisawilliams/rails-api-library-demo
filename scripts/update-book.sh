curl --include --request PATCH http://localhost:4741/books/5 \
  --header "Content-Type: application/json" \
  --data '{
	"book": {
    "title": "Example Title",
    "author": "Example Author"
	}
}'
