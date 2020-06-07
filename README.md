# FlaskHelm

This project provides a basic structure for running a web application using Flask, Docker, Kubernetes and Helm. The application uses Guicorn display "Hello World!", accessable in the container on port 8080. It is currently running on GKE using the GCE ingress controller, so customize the ingress accordingly to your controller. 

## Install Helm Chart
```
helm repo add myhelmrepo https://arjungopisetty.github.io/helm-chart-repo
helm install myhelmrepo/flask-hello-world
```

## Deployment
The chart is running on a GKE cluster. The app is available at the static IP address: [34.120.196.36](http://34.120.196.36).
