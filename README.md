# helm-chart
Collection of Helm charts to deploy services on Kubernetes

## Prerequisites
- Helm
- pre-commit

## Repository Structure

This repository contains a collection of Helm charts for deploying various services on Kubernetes. The structure of the repository is organized to facilitate easy navigation and management of multiple charts. Here’s an overview of the repository structure:

### Directory Layout

- **charts/**: This directory contains all individual Helm charts, each in its own subdirectory.
  - **service-chart/**: Helm chart for deploying the Password Generator API.
    - **Chart.yaml**: The chart metadata file that includes information such as the chart version, dependencies, and a description of the chart.
    - **values.yaml**: The default configuration values for the chart, which can be overridden during installation or upgrades.
    - **templates/**: Kubernetes resource templates that the chart will render using values provided at runtime.
    - **crds/**: Optional directory containing Custom Resource Definitions that need to be installed as part of the chart.
    - **.helmignore**: A file that specifies patterns to ignore when packaging the chart.

- **.github/**: Contains GitHub Actions CI/CD workflows
- **.helmignore**: Patterns to ignore when building packages
- **.gitignore**: Patterns to ignore when commiting files to Git repository



## Usage

### Packaging

1. Clone this repo
2. Run the command below to generate the Helm templates
```bash
helm template charts/service-chart
```
3. Package the chart:
```bash
helm package service-chart
```

### Installation

```bash
 helm install <release_name> ./service-chart -n services
```

## Pre-commit Hooks

- To ensure code standards and quality, pre-commit hook checks are automatically enforced before code is committed to the repository.
- The configuration for pre-commit can be found in `.pre-commit-config.yaml`
