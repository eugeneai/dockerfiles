.PHONY: all copy docker clean test

RUNIT=../runit-services/etc/sv
IMAGE=ssh-server

all: copy docker clean

copy: $(RUNIT)/sshd/run
	mkdir -p ./services
	cp -r $(RUNIT)/sshd/ ./services/ 
	rm -rf ./services/sshd/{log,supervise}
	
docker: Dockerfile setup.sh
	docker build -t "eugeneai/$(IMAGE)" .
	
clean:	
	rm -rf ./services
	
test:	all
	docker run --mac-address=90:90:90:90:90:90 eugeneai/ssh-server 