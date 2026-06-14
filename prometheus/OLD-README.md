


https://github.com/prometheus-community/helm-charts
https://spacelift.io/blog/prometheus-helm-chart



helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus  prometheus-community/prometheus


kubectl get svc -A
kubectl port-forward --address 0.0.0.0 svc/prometheus-server -n default 80:80

helm uninstall prometheus
