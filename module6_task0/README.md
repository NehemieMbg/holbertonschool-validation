# **Jenkins Docker Image**

This repository contains a Dockerfile for building a custom Jenkins image with the following features:

- Inherits from the latest Jenkins Long-Term Support (LTS) version
- Includes Java Development Toolkit (JDK) version 11
- Disables the Jenkins setup wizard
- Installs a set of pre-defined plugins

## **Usage**

To build the image, run the following command in the root of this repository:

`docker build -t my-jenkins`

You can then run a container from the image with:

docker run -p 8080:8080 -p 50000:50000 my-jenkins

This will start a Jenkins instance on port 8080 of your Docker host. You can access it by visiting http://hostname:8080 in a web browser.

## **Configuration**

The set of pre-installed plugins and their versions are defined in the plugins.txt file. You can edit this file to add or remove plugins before building the image.

To disable the Jenkins setup wizard, the environment variable `JAVA_OPTS` is set to `-Djenkins.install.runSetupWizard=false`

## **Testing**

The Docker image can be tested using Container Structure Test (CST) by running the following command in the root of this repository:

`container-structure-test test --image my-jenkins --config cst.yml``

This command will run the test
