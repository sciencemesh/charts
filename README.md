# Sciencemesh Chart Repo

Helm Chart Repository for the ScienceMesh IOP project.

The chart repository is available at [https://sciencemesh.github.io/charts](https://sciencemesh.github.io/charts).

## Working with the repo

Add the chart repo:

```bash
$ helm repo add sciencemesh https://sciencemesh.github.io/charts/
"sciencemesh" has been added to your repositories
```

Verify it's available and searh for charts:

```bash
$ helm repo list
NAME       	URL
sciencemesh	https://sciencemesh.github.io/charts/
$ helm search repo sciencemesh
NAME           	CHART VERSION	APP VERSION	DESCRIPTION
sciencemesh/iop	0.0.2        	0.0.1      	ScienceMesh IOP is the reference Federated Scie...
```

### Install the IOP

You can find detailed instructions on how to configure and deploy the IOP on the [Sciencemesh developer docs](https://developer.sciencemesh.io/docs/iop/deployment/kubernetes/).
