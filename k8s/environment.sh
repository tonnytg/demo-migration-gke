kubectl create namespace app1-ns
kubectl apply -f app1-pod.yaml --namespace app1-ns
kubectl apply -f app1-svc.yaml --namespace app1-ns
kubectl create namespace app2-ns
kubectl apply -f app2-pod.yaml --namespace app2-ns
