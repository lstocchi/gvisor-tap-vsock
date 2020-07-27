.PHONY: all
all:
	go build -o bin/host ./host
	go build -o bin/vm ./vm

.PHONY: crc
crc: all
	scp bin/vm crc:
	scp setup.sh crc:

.PHONY: vendor
vendor:
	go mod tidy
	go mod vendor