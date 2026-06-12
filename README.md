

+ setup ha k3s woith etcd

openssl rand -base64 24

export K3S_TOKEN=
curl -sfL https://get.k3s.io | sh -s - server --cluster-init

export INITSERVERIP=
curl -sfL https://get.k3s.io | sh -s - server --server https://$INITSERVERIP:6443
curl -sfL https://get.k3s.io | sh -s - agent --server https://$INITSERVERIP:6443

in developer machine, install "kubectl"

cp /etc/rancher/k3s/k3s.yaml 
out, chown as user,
update ip to be one of the server IP
move&rename k3s.yaml to "/home/$USER/.kube/config"

+ deploy httpbin 

    + following https://developers.cloudflare.com/cloudflare-one/networks/connectors/cloudflare-tunnel/deployment-guides/kubernetes/

kubectl create namespace httpbin
kubectl create -f httpbin*.yaml
kubectl apply -f httpbin*.yaml

``

https://www.jeffgeerling.com/blog/2022/quick-hello-world-http-deployment-testing-k3s-and-traefik/

https://dev.to/sklarsa/k3s-traefik-ingress-configured-for-your-homelab-58lc

```


"An Ingress does not expose arbitrary ports or protocols. Exposing services other than HTTP and HTTPS to the internet typically uses a service of type Service.Type=NodePort or Service.Type=LoadBalancer."

https://kubernetes.io/docs/concepts/services-networking/ingress/



easy bad mount
https://github.com/vgist/dockerfiles/tree/master/nfs-server
https://hub.docker.com/r/gists/nfs-server