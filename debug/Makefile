.PHONY: all docker

#RUNIT=../runit-services/etc/sv
IMAGE=debug

all: docker

docker: Dockerfile
	docker build -t "eugeneai/$(IMAGE)" .
	
