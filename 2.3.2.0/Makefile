build:
	docker build -t ansible:2.3.2.0 .

test:
	container-structure-test test \
		--image ansible:2.3.2.0 \
		--config test-config.yaml
