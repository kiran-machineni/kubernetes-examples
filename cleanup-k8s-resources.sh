#!/bin/bash

# deleting resources from file
# kubectl delete -f nginx.yaml

# resource specific
# kubectl delete --all services --dry-run=client

# dry run before applying delete all
kubectl delete all --all --dry-run=client

# kubectl delete all --all
# kubectl delete all --all -namespace=<your-namespace>

# select with label
# kubectl delete deployments -l app=nginx

# deleting namespace deletes all resources in namespace
# kubectl delete namespace foo
