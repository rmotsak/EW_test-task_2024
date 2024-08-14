# DevOps Test Assignment Project

This repository contains an example of infrastructure and configuration for demonstrating deployment and CI/CD processes. Please note that all files are samples and may differ from the actual configuration depending on the specifics of the project.

## Files

### 1. [`.github/workflows/main.yaml`](.github/workflows/main.yaml)
This is an example of a CI/CD Pipeline that automates the process of building and deploying a new version of the application. It includes steps for building a Docker image, pushing it to Amazon ECR, and updating the environment.

### 2. [`infra/terraform`](infra/terraform)
This directory contains an example of Infrastructure as Code (IaC) configuration for deploying a Kubernetes (k8s) cluster using Terraform. It demonstrates how to manage infrastructure through code and ensure consistency during deployment.

### 3. [`docs/development_set-up.md`](docs/development_set-up.md)
This document contains a discussion and justification of the tool choices and approaches for setting up the development environment. It describes how to deploy the infrastructure for a test environment and provides examples of possible solutions.

### 4. [`docs/production_set-up.md`](docs/production_set-up.md)
This document discusses the recommendations for setting up the production environment, including the number of environments needed, CI/CD tooling, additional tools for production stability, networking, reliability and scalability mechanisms, and alerting considerations.

## Note

Please note that all files are only samples and do not contain specific configurations for a particular application. They provide general information and structure that can be adapted to meet the specific needs of the project.
