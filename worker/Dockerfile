FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN groupadd -g 1000 jenkins_worker
RUN useradd -d /home/jenkins_worker -s /bin/bash -m jenkins_worker -u 1000 -g jenkins_worker
RUN echo jenkins_worker:jpass | chpasswd
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa && apt-get update
RUN apt-get install -y openssh-server openjdk-7-jre wget iproute2
RUN mkdir -p /var/run/sshd
CMD ip route | grep "default via" | awk '{print $3}' && /usr/sbin/sshd -D
