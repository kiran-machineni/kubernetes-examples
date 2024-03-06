#!/bin/bash

# kubectl cp ./index.php <pod name>:/var/www/html

kubectl cp ./index.php php-deployment-7946b487f7-78ptp:/var/www/html

kubectl port-forward service/php-service 8080:80
curl localhost:8080
