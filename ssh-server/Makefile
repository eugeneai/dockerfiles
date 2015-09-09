.PHONY: all copy docker clean

RUNIT=../runit-services/etc/sv
IMAGE=ssh-server

all: copy docker clean

copy: $(RUNIT)/sshd/run
	mkdir sshd
	cp -r $(RUNIT)/sshd/ ./ 
	
docker: Dockerfile setup.sh
	docker build -t "eugeneai/$(IMAGE)" .
	
clean:	
	rm -rf sshd