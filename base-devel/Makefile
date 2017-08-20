.PHONY: all copy docker clean test

RUNIT=../runit-services/etc/sv
IMAGE=base-devel

all: copy docker clean

docker: Dockerfile 
	docker build -t "eugeneai/$(IMAGE)" .
	
clean:	
	rm -rf ./services
	
test:	all
	docker run --rm --mac-address=90:90:90:90:90:90 eugeneai/$(IMAGE) 