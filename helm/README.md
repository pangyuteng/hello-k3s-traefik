

+ install helm in developer machine

https://helm.sh/docs/intro/install/#from-script




https://github.com/helm/charts-repo-actions-demo/tree/main/charts


##  chart.yaml


https://helm.sh/docs/v2/developing_charts/#the-chartyaml-file



helm install foo-test -f foo/values-test.yaml ./foo
helm upgrade foo-test -f foo/values-test.yaml ./foo


helm install foo-prod -f foo/values-prod.yaml ./foo
helm upgrade foo-prod -f foo/values-prod.yaml ./foo

helm list

helm delete foo-test
helm delete foo-prod

kubectl delete namespace httpbin-test
kubectl delete namespace httpbin-prod