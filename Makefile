.PHONY: run build clean
WIFI_IP := $(shell ipconfig getifaddr en0)

all: build

run:
	hugo server -D \
		--bind=$(WIFI_IP) \
		--baseURL=http://$(WIFI_IP):1313

build:
	hugo -D

deploy: build
	git add -A && git commit -m "autocommit $(shell date)" && git push