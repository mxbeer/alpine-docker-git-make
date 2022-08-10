.PHONY: build-publish

image = "mxbeer/alpine-docker-git-make"
image_tag = "latest"

build-publish:
	docker login
	docker buildx create --use
	docker buildx build --no-cache --push --platform linux/amd64,linux/arm/v7,linux/arm64/v8,linux/arm/v6,linux/ppc64le,linux/s390x -t $(image):$(image_tag) .
