# **README**

## **Introduction**

This project aims to provide a consistent development environment for all team members using Docker. The official Golang Docker Image (golang:1.15.8-buster) will be used for the steps of building, unit-testing, and integration-testing. This will ensure that the build environment is deterministic and the same for all team members, regardless of their operating system.

## **Getting Started**

To get started, you will need to have Docker installed on your machine. If you are using GitHub Actions, Docker is already installed on the runners, so there is no need to install it again.

You will also need to have the following tools installed:

- Hugo
- Golangclint

Golang should not be installed, as it will be handled through the Docker image.

## **Makefile Targets**

The Makefile contains the following targets:

- **`build`**: This target is responsible for building the Golang and Hugo portions of the project. The Golang build will be done using the Docker image golang:1.15.8-buster, while the Hugo build will be done using the locally installed version of Hugo.

- **`unit-tests`**: This target is responsible for running the unit tests of the project. It will use the Docker image golang:1.15.8-buster to run the tests in a consistent environment.

- **`integration-tests`**: This target is responsible for running the integration tests of the project. It will also use the Docker image golang:1.15.8-buster to run the tests in a consistent environment.

## **Code Coverage Reports**

The behavior of the code coverage reports will remain the same. The reports will be available after running the unit-tests and integration-tests targets.

## **GitHub Actions Workflow**

The file **`.github/workflows/module4_task0.yml`** must be present and have a valid YAML syntax. It should be a valid GitHub action workflow with the same content as from the **`module3_task5`**.

## **Requirements**

The project requires the following:

- A valid Go-Hugo website provided
- No Git submodules
- The theme 'ananke' is installed
- A Makefile with the same targets, including 'help'
- An up-to-date README.md file with the project state
- The file **`./github-workflow.yml`** must be a symbolic link to the original file **`.github/workflows/module4_task0.yml`**

## **Conclusion**

By using Docker to provide a consistent development environment, this project aims to make onboarding new team members and managing different operating systems easier. The use of the official Golang Docker Image (golang:1.15.8-buster) ensures that the build environment is deterministic and the same for all team members. This should help to reduce issues caused by differences in operating systems and package managers.
