gcloud version || true
if [ ! -d "$HOME/google-cloud-sdk/bin" ]; then rm -rf $HOME/google-cloud-sdk;
 curl https://sdk.cloud.google.com | bash; fi
source /home/travis/google-cloud-sdk/path.bash.inc
gcloud components install kubectl
gcloud auth activate-service-account --key-file google-service-account-creds.json --project flaskhelm
gcloud config set project flaskhelm
gcloud container clusters get-credentials my-first-cluster-1 --zone us-central1-c --project flaskhelm
gcloud auth configure-docker
cat "$HOME/docker/.docker/config.json"
echo "$DOCKER_CONFIG"