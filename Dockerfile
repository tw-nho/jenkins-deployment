FROM jenkins/jenkins:lts

USER root

RUN apt-get update
RUN apt-get install -y libltdl7

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080