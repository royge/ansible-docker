build:
	docker build -t ansible:2.6-py2 .

test:
	container-structure-test test \
		--image ansible:2.6-py2 \
		--config test-config.yaml
