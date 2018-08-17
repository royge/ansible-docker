build:
	docker build -t ansible:2.3.2.0-py2 .

test:
	container-structure-test test \
		--image ansible:2.3.2.0-py2 \
		--config test-config.yaml
