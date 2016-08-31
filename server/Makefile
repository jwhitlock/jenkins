PHONY: build run

run:
	docker run \
		--name jenkins_server \
		-p 8080:8080 \
		-p 50000:50000 \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-d \
		jenkins_server

build:
	docker build -t jenkins_server .
