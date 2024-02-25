IMAGE ?= myhro/node-example

build:
	docker buildx build --platform linux/amd64 -t $(IMAGE) .

clean:
	rm -rf node_modules/

push:
	docker push $(IMAGE):latest
