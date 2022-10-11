

.PHONY: all

all:
	CGO_ENABLED=0  GOOS=linux GOARCH=amd64 go build -o dist/

clean:
	rm -f dist/*