# Minikube walkthrough

Publish image:

```
pipenv lock -r > requirements.txt
docker build -t skipperkongen/flask-walkthrough .
docker push skipperkongen/flask-walkthrough
```

Run in minikube:

```
kubectl create deployment flask-walkthrough --image=skipperkongen/flask-walkthrough
kubectl expose deployment flask-walkthrough --type=LoadBalancer --port=80
```

Attempt 2:

```
kubectl run flask-walkthrough --image=docker.io/skipperkongen/flask-walkthrough:latest --port=80
kubectl expose deployment flask-walkthrough --type=LoadBalancer --port=80
kubectl get svc
curl $(minikube service flask-walkthrough --url)
kubectl delete deployment,service flask-walkthrough
```
