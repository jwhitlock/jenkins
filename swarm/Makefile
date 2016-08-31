.PHONY: build run
SWARM_USERNAME ?= swarm
SWARM_PASSWORD ?= swarm_password

run:
	docker run \
		-d \
		--name jenkins_swarm_worker \
		-e SWARM_USERNAME=$(SWARM_USERNAME) \
		-e SWARM_PASSWORD=$(SWARM_PASSWORD) \
		jenkins_swarm_worker

build:
	docker build -t jenkins_swarm_worker .

logs:
	docker logs -f jenkins_swarm_worker
