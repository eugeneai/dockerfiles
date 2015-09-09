.PHONY: all docker

#RUNIT=../runit-services/etc/sv
IMAGE=rcs-base

all: docker

docker: Dockerfile
	docker build -t "eugeneai/$(IMAGE)" .
	
