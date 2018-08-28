REPO=gstlt/docker-terraform

.PHONY: all
all:
	make build

.PHONY: build
build:
	docker build -t $(REPO) .

.PHONY: nocache
nocache:
	docker build -t $(REPO) --no-cache .

