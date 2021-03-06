#!/bin/bash
HOST_IP=$(ip route | grep ^default | awk '{print $3}')
JENKINS_SERVER=${JENKINS_SERVER:-$HOST_IP}
JENKINS_PORT=${JENKINS_PORT:-8080}
JENKINS_LABELS=${JENKINS_LABELS:-swarm}
JENKINS_HOME=${JENKINS_HOME:-$HOME}
echo "Starting up swarm client with args:"
echo "$@"
echo "and env:"
echo "$(env)"
set -x
java -jar /home/jenkins_worker/swarm-client-2.2-jar-with-dependencies.jar -fsroot "$JENKINS_HOME" -labels "$JENKINS_LABELS" -master http://$JENKINS_SERVER:$JENKINS_PORT -username ${SWARM_USERNAME} -password ${SWARM_PASSWORD} $@
sleep infinity
