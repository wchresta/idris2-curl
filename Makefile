.PHONY: all build build-test test

all: build

build:
	idris2 --build curl.ipkg

build-test:
	idris2 --build test-curl.ipkg

test: build-test
	./build/exec/runTests

clean:
	rm -rf ./build

