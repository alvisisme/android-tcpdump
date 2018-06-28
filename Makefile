all: env build

env:
	docker build -t android-tcpdump-build .

build:
	docker run --rm -v `pwd`/out:/home/out android-tcpdump-build