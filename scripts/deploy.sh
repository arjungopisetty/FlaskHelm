docker tag flaskhelm/flask-hello-world gcr.io/flaskhelm/flask-hello-world:master
docker push gcr.io/flaskhelm/flask-hello-world:master

# helm local-chart-version bump -s minor -c flask-hello-world
helm repo index ci-cd-helm-charts --url https://ci-cd-helm-charts.storage.googleapis.com/ 
scripts/sync-repo.sh flask-hello-world/ci-cd-helm-charts ci-cd-helm-charts

helm repo add mybucket https://ci-cd-helm-charts.storage.googleapis.com/
helm repo list
helm repo update
helm upgrade flask-hello-world mybucket/flask-hello-world
