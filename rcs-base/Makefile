.PHONY: all docker copy

RUNIT=../runit-services/etc/sv
IMAGE=rcs-base

all: copy docker

docker: Dockerfile
	docker build -t "eugeneai/$(IMAGE)" .
	
copy: $(RUNIT)/apache2/run
	mkdir -p ./services
	cp -r $(RUNIT)/apache2/ ./services/ 
	rm -rf ./services/apache2/{log,supervise}
	
clean:
	rm -rf ./services