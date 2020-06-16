# FlaskHelm [![Build Status](https://travis-ci.com/arjungopisetty/FlaskHelm.svg?branch=master)](https://travis-ci.com/arjungopisetty/FlaskHelm)

This project provides a basic structure for running a web application using Flask, Docker, Kubernetes and Helm. The application uses Gunicorn to display "Hello World!", accessable in the container on port 8080. It is currently running on GKE using the GCE ingress controller, so customize the ingress accordingly to your controller. 

CI/CD is handled using Travis CI and GCP, using a storage bucket as a Helm chart repository to deploy from. See ```.travis.yml``` and  ```scripts/``` for understanding the CI/CD flow.

I'm experimenting with using the GKE [ManagedCertificate](https://github.com/GoogleCloudPlatform/gke-managed-certs) resource to automatically provision and manage SSL certificates.

## Install Helm Chart
```
helm repo add mybucket https://ci-cd-helm-charts.storage.googleapis.com/
helm install mybucket/flask-hello-world
```

## Production
The chart is running on a GKE cluster. The app is available at this free subdomain: [flaskhelloworld.crabdance.com](https://flaskhelloworld.crabdance.com).
