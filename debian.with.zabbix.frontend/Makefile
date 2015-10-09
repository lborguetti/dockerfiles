.PHONY: build run

DOCKER_IMAGE = lborguetti/zabbix-frontend
CURRENT_PATH = $(shell pwd)

build:
	docker build -t $(DOCKER_IMAGE) .

push: build
	docker login
	docker push $(DOCKER_IMAGE)

clean:
	docker rmi $(DOCKER_IMAGE)
