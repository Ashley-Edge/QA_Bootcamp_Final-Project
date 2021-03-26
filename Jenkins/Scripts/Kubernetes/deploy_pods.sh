#!/bin/sh

# ----- PETCLINIC -----

# Runs our back end REST API. We must start this before the front end.
echo $RDS_ENDPOINT
echo $RDS_USERNAME
echo $RDS_PASSWORD
envsubst < Kubernetes/deployment.yaml | kubectl apply -f -

# Runs our front end Angular file.
kubectl apply -f Kubernetes/deployment-client.yaml

# Runs our loadBalancer service
#kubectl apply -f Kubernetes/loadbalancer.yaml
