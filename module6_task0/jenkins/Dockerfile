# Use Jenkins LTS with JDK11 as the base image
FROM jenkins/jenkins:lts-jdk11

# Copy the plugins.txt file into the image
COPY plugins.txt /usr/share/jenkins/ref/plugins/plugins.txt

# Install the plugins listed in plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins/plugins.txt

# Disable the Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
