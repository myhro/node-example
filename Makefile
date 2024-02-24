IMAGE ?= myhro/node-example

build:
	docker build -t $(IMAGE) .

clean:
	rm -rf node_modules/

push:
	docker push $(IMAGE):latest
