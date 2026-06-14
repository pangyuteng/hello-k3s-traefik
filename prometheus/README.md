


https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack

helm install kube-prometheus-stack oci://ghcr.io/prometheus-community/charts/kube-prometheus-stack

https://www.youtube.com/watch?v=QoDqxm7ybLc

kubectl port-forward --address 0.0.0.0 svc/prometheus-operated -n default 9090:9090


kubectl port-forward --address 0.0.0.0 svc/kube-prometheus-stack-grafana -n default 80:80

kubectl get secret kube-prometheus-stack-grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

https://grafana.com/docs/grafana/latest/setup-grafana/installation/helm/#access-grafana
https://stackoverflow.com/a/78001781/868736
