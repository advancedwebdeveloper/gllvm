GOROOT := $(shell go env GOPATH)

build:
	go build ./cmd/...


install: build
	go install ./cmd/...

clean:
	go clean
	rm -f gclang gclang++ get-bc

uninstall:
	rm -f $(GOROOT)/bin/gclang
	rm -f $(GOROOT)/bin/gclang++
	rm -f $(GOROOT)/bin/get-bc
	rm -f $(GOROOT)/bin/gsanity-check
