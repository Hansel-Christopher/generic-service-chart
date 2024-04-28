# helm-chart
Collection of Helm charts to deploy services on Kubernetes

## Prerequisites
- Helm
- pre-commit

## Repository Structure

```
  .
  ├── charts/ This directory contains all individual Helm charts, each in its own subdirectory
  │   └── service-chart/ Helm chart for deploying the Password Generator API./
  │       ├── Chart.yaml The chart metadata file that includes information such as the chart version, dependencies, and a description of the chart.
  │       ├── values.yaml The default configuration values for the chart, which can be overridden during installation or upgrades.
  │       ├── templates/ Kubernetes resource templates that the chart will render using values provided at runtime.
  │       └── .helmignore A file that specifies patterns to ignore when packaging the chart.
  ├── .github/: Contains GitHub Actions CI/CD workflows
  └── .gitignore: Patterns to ignore when commiting files to Git repository
```

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
 helm install <release_name> charts/service-chart -n services
```

## Pre-commit Hooks

- To ensure code standards and quality, pre-commit hook checks are automatically enforced before code is committed to the repository.
- The configuration for pre-commit can be found in `.pre-commit-config.yaml`
