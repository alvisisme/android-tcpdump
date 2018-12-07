all: env build

env:
	docker-compose build

build:
	docker-compose run android-build-tcpdump

dist: build/sbin/tcpdump
	cp build/sbin/tcpdump bin/tcpdump

.PHONY: env build dist