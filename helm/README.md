

+ install helm in developer machine

https://helm.sh/docs/intro/install/#from-script




https://github.com/helm/charts-repo-actions-demo/tree/main/charts


##  chart.yaml


https://helm.sh/docs/v2/developing_charts/#the-chartyaml-file



helm install test-name -f foo/values-test.yaml ./foo
helm upgrade test-name -f foo/values-test.yaml ./foo


helm install prod-name -f foo/values-prod.yaml ./foo