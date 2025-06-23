.PHONY: run build clean

all: build

run:
	hugo server -D --baseURL=http://localhost:1313

build:
	hugo -D

deploy: build
	git add -A && git commit -m "autocommit $(shell date)" && git push