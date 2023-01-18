FROM jenkins/jenkins:lts-jdk11

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY jenkins.yml /var/jenkins_config/jenkins.yml
ENV CASC_JENKINS_CONFIG /var/jenkins_config/jenkins.yml

