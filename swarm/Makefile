.PHONY: build run

run:
	docker run \
		-d \
		--name jenkins_swarm_worker \
		jenkins_swarm_worker

build:
	docker build -t jenkins_swarm_worker .
