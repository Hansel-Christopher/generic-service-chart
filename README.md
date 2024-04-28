# helm-chart
Collection of Helm charts to deploy services on Kubernetes

## Prerequisites
- Helm
- pre-commit

## Repository Structure

```
  .
  ├── charts/
  │   └── service-chart/
  │       ├── Chart.yaml
  │       ├── values.yaml
  │       ├── templates/
  │       └── .helmignore
  ├── .github/
  └── .gitignore
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
