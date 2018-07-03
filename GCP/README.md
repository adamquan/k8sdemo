# Oberservable Kuberentes demo using Beats and APM in GCP

1. Create a Kubernetes cluster in GCP using your GCP account, and setup your client (gcloud, kubectl)

2. Setup your environment. Make sure everything matches your cluster. "aquan" is the name of my Kubernetes cluster. "adam.quan@elastic.co" is my GCP account ID.

gcloud config set project elastic-sa
gcloud config set compute/zone us-central1-a
gcloud config set container/cluster aquan
gcloud auth login
gcloud container clusters get-credentials aquan --zone us-central1-a --project elastic-sa
kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin --user=adam.quan@elastic.co
kubectl create clusterrolebinding adam.quan-cluster-admin-binding --clusterrole=cluster-admin --user=adam.quan@elastic.co

3. Change the secretes in the secretes.yaml file as needed. Make sure you change the host name of the Elasticsearch host and Kibana host to point to your own Elastic Cloud instance. Remember to use the '-n' option during encoding.

echo -n 'STRING-TO-ENCODE' | base64

4. Deploy everyting using the following command. You are good to go!

kubectl apply -f .
