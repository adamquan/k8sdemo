# Oberservable Kuberentes demo using Beats and APM in GCP

1. Create a Kubernetes cluster in GCP using your GCP account. See screenshots below:

Go to the "Kuberentes Engine" page, click on "CREATE CLUSTER":
![Kubernetes Cluster](images/k8s-1.png "Kubernetes Cluster")

Give your cluster a name, take the defaults but change the cluster size to "2" to reduce cost. Click on "Create". Your cluster should be ready in a few minutes.
![Kubernetes Cluster](images/k8s-2.png "Kubernetes Cluster")

2. Install Googl Cloud SDK by following this documentation: https://cloud.google.com/sdk/install

3. Install kubectl by following this documentation: https://kubernetes.io/docs/tasks/tools/install-kubectl/

4. Setup your local environment using the following command. Make sure everything matches your cluster. "aquan" is the name of my Kubernetes cluster. "adam.quan@elastic.co" is my GCP account ID.

```
gcloud config set project elastic-sa
gcloud config set compute/zone us-central1-a
gcloud config set container/cluster aquan
gcloud auth login
gcloud container clusters get-credentials aquan --zone us-central1-a --project elastic-sa
kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin --user=adam.quan@elastic.co
kubectl create clusterrolebinding adam.quan-cluster-admin-binding --clusterrole=cluster-admin --user=adam.quan@elastic.co
```

5. Change the secretes in the secretes.yaml file to point to your Elastic Cloud Elasticsearch cluster. Make sure you change the host name of the Elasticsearch host and Kibana host to point to your own Elastic Cloud instance. Remember to use the '-n' option during encoding.

```
echo -n 'STRING-TO-ENCODE' | base64
```

6. Deploy everyting using the following command. You are good to go!

```
kubectl apply -f .
```
