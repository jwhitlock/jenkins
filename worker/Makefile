.PHONY: build run

run:
	docker run \
		-it \
		--name jenkins_worker \
		-p 2222:22
		jenkins_worker

build:
	docker build -t jenkins_worker .
