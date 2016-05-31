all: build start stop

start:
	docker run -it contiv/centos7 /bin/bash

stop:
	docker rm -f contiv/centos7

build:
	version=$$(cat VERSION) atlas_token="dummy" packer build --only build-centos --force docker.json

release-build:
	version=$$(cat VERSION) atlas_token=${ATLAS_TOKEN} packer build --only release-centos --force docker.json
