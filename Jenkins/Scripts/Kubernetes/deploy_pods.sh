#!/bin/sh

# ----- PETCLINIC -----

# Runs our back end REST API. We must start this before the front end.
kubectl apply -f Kubernetes/deployment.yaml

# Runs our front end Angular file.
kubectl apply -f Kubernetes/deployment-client.yaml
