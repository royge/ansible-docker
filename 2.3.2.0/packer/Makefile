build:
	docker build -t ansible:2.3.2.0-packer .

test:
	container-structure-test test \
		--image ansible:2.3.2.0-packer \
		--config test-config.yaml
