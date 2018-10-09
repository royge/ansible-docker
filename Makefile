build:
	docker build --pull -t ansible:latest .
	docker tag ansible:latest royge/ansible:latest
	docker build -t ansible:packer ./packer
	docker tag ansible:packer royge/ansible:packer
	docker build -t ansible:2.3.2.0 ./2.3.2.0
	docker tag ansible:2.3.2.0 royge/ansible:2.3.2.0
	docker build -t ansible:2.3.2.0-packer ./2.3.2.0/packer
	docker tag ansible:2.3.2.0-packer royge/ansible:2.3.2.0-packer
	docker build --pull -t ansible:py2 ./python2.7
	docker tag ansible:py2 royge/ansible:py2
	docker build -t ansible:py2-packer ./python2.7/packer
	docker tag ansible:py2-packer royge/ansible:py2-packer
	docker build -t ansible:2.6-py2 ./python2.7/2.6
	docker tag ansible:2.6-py2 royge/ansible:2.6-py2
	docker build -t ansible:2.3.2.0-py2 ./python2.7/2.3.2.0
	docker tag ansible:2.3.2.0-py2 royge/ansible:2.3.2.0-py2

prepare:
	curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test

push:
	docker push royge/ansible:latest
	docker push royge/ansible:packer
	docker push royge/ansible:2.3.2.0
	docker push royge/ansible:2.3.2.0-packer
	docker push royge/ansible:py2
	docker push royge/ansible:py2-packer
	docker push royge/ansible:2.6-py2
	docker push royge/ansible:2.3.2.0-py2

test:
	container-structure-test test \
		--image ansible:latest \
		--config test-config.yaml
	container-structure-test test \
		--image ansible:packer \
		--config packer/test-config.yaml
	container-structure-test test \
		--image ansible:2.3.2.0 \
		--config 2.3.2.0/test-config.yaml
	container-structure-test test \
		--image ansible:2.3.2.0-packer \
		--config 2.3.2.0/packer/test-config.yaml
	container-structure-test test \
		--image ansible:py2 \
		--config python2.7/test-config.yaml
	container-structure-test test \
		--image ansible:py2-packer \
		--config python2.7/packer/test-config.yaml
	container-structure-test test \
		--image ansible:2.6-py2 \
		--config python2.7/2.6/test-config.yaml
	container-structure-test test \
		--image ansible:2.3.2.0-py2 \
		--config python2.7/2.3.2.0/test-config.yaml
