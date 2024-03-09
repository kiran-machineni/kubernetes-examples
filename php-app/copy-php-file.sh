#!/bin/bash

DEPLOYMENT_LABEL="php-app"
CONTAINER_NAME="php-container"

# Get the pod name using the label selector
POD_NAME=$(kubectl get pods -l app=${DEPLOYMENT_LABEL} --output=jsonpath='{.items[0].metadata.name}')

# Check if the pod name is not empty
if [ -n "${POD_NAME}" ]; then
  # Copy the file to the specified path in the container
  kubectl cp ./index.php ${POD_NAME}:/var/www/html -c ${CONTAINER_NAME}
  echo "File copied successfully to ${POD_NAME}"
else
  echo "Error: Pod not found for deployment label ${DEPLOYMENT_LABEL}"
fi

kubectl port-forward service/php-service 8080:80

# curl localhost:8080
