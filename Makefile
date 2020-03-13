deps:
	go get -u github.com/mtnfog/philter-sdk-golang/

build:
	go build -o philter-cli-linux-amd64 philter-cli.go
