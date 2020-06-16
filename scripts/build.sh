git_sha="$(git rev-parse --short HEAD)"

docker build -t flaskhelm/flask-hello-world .
docker tag flaskhelm/flask-hello-world gcr.io/flaskhelm/flask-hello-world:${git_sha}
docker push gcr.io/flaskhelm/flask-hello-world:${git_sha}

helm package flask-hello-world -d flask-hello-world/ci-cd-helm-charts
