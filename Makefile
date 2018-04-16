.PHONY: test

VERSION_FILE=VERSION
VERSION=`cat $(VERSION_FILE)`
CURRENT_DIR=$(shell basename $(CURDIR))

default: build

build:
	@swift build 

clean:
	@swift package clean
	@rm -rf .build

run: build
	@.build/debug/$(CURRENT_DIR)
