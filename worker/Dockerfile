FROM ubuntu
RUN groupadd -g 1000 jenkins_worker
RUN useradd -d /home/jenkins_worker -s /bin/bash -m jenkins_worker -u 1000 -g jenkins_worker
RUN echo jenkins_worker:jpass | chpasswd
RUN apt-get update && apt-get install -y openssh-server openjdk-7-jre docker.io wget
RUN mkdir -p /var/run/sshd
CMD ip route | grep "default via" | awk '{print $3}' && /usr/sbin/sshd -D

