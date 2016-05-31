all: build start stop

start:
	docker run -it contiv/ubuntu1510 /bin/bash

stop:
	docker rm -f contiv/ubuntu1510

build:
	version=$$(cat VERSION) atlas_token="dummy" packer build --only build-ubuntu --force docker.json

release-build:
	version=$$(cat VERSION) atlas_token=${ATLAS_TOKEN} packer build --only release-ubuntu --force docker.json
