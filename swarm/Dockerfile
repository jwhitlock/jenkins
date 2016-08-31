FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN groupadd -g 1000 jenkins_worker
RUN useradd -d /home/jenkins_worker -s /bin/bash -m jenkins_worker -u 1000 -g jenkins_worker
RUN echo jenkins_worker:jpass | chpasswd
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa && apt-get update
RUN apt-get install -y openssh-server openjdk-7-jre wget iproute2
RUN apt-get install -y unzip
RUN wget -O /home/jenkins_worker/swarm-client-1.22-jar-with-dependencies.jar \
    http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/1.22/swarm-client-1.22-jar-with-dependencies.jar
COPY startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh
ENTRYPOINT ["/usr/bin/startup.sh"]
