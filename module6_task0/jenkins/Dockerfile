# Use the official Jenkins LTS image with JDK11
FROM jenkins/jenkins:lts-jdk11

# Disable the Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copy the plugins.txt file to the container
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install the plugins defined in plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
