deps:
	go get -u github.com/mtnfog/philter-sdk-golang/

build:
	go build -o philter-cli-amd64 philter-cli.go
