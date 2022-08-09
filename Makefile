.PHONY: build publish

image = "mxbeer/alpine-docker-git-make"

publish: build
	docker login
	docker push $(image):latest

build:
	docker build --no-cache -t $(image):latest .
