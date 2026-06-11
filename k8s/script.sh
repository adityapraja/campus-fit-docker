#script to run all resources at a time
kubectl apply -f mongodb-secret.yaml
#kubectl apply -f mongodb-config.yaml
kubectl apply -f mongodb-pvc.yaml
kubectl apply -f app-configmap.yaml
kubectl apply -f mongodb-deployment.yaml
kubectl apply -f mongodb-service.yaml
kubectl apply -f app-deployment.yaml
kubectl apply -f app-service.yaml
minikube addons enable ingress
kubectl apply -f app-ingress.yaml
