#!/bin/sh
echo 'Remember to run: minikube start'

kubectl run flask-walkthrough --image=docker.io/skipperkongen/flask-walkthrough:latest --port=80
kubectl expose deployment flask-walkthrough --type=LoadBalancer --port=80
kubectl get svc
curl $(minikube service flask-walkthrough --url)
kubectl delete deployment,service flask-walkthrough
