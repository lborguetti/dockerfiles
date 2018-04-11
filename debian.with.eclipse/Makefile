.PHONY: setup build run

DOCKER_IMAGE = eclipse
WORK_DIR     = /home/data/workspace
CURRENT_PATH = $(shell pwd)

all: setup build run

setup:
	xhost +

build:
	docker build -t $(DOCKER_IMAGE) .

run:
	docker run --rm -t -i -v $(WORK_DIR):/root/workspace -v /tmp/.X11-unix/X0:/tmp/.X11-unix/X0 -e "DISPLAY=:0" --name $(DOCKER_IMAGE) $(DOCKER_IMAGE)
