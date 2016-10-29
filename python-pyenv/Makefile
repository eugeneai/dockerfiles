.PHONY: all docker copy down

RUNIT=../runit-services/etc/sv
IMAGENAME=python-pyenv
IMAGE="eugeneai/$(IMAGENAME)"

all: docker

docker: Dockerfile
	docker build -t $(IMAGE) .
	
#copy: $(RUNIT)/apache2/run
#	mkdir -p ./services
#	cp -r $(RUNIT)/apache2/ ./services/ 
#	rm -rf ./services/apache2/{log,supervise}
	
clean:
	# rm -rf ./services
	
down:
	docker rmi -f $(IMAGE)