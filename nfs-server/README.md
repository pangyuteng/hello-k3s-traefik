
## *** you have to install NFS CSI driver if you want nfs mounts !!! ***

https://github.com/kubernetes-csi/csi-driver-nfs/blob/master/deploy/example/nfs-provisioner/README.md


kubectl create -f https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/deploy/example/nfs-provisioner/nfs-server.yaml

curl -skSL https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/v4.13.2/deploy/install-driver.sh | bash -s v4.13.2 --

kubectl -n kube-system get pod -o wide -l app=csi-nfs-controller
kubectl -n kube-system get pod -o wide -l app=csi-nfs-node

kubectl create -f https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/deploy/example/nfs-provisioner/nginx-pod.yaml


--

# OLD

https://github.com/sjiveson/nfs-server-alpine

https://hub.docker.com/r/itsthenetwork/nfs-server-alpine/

https://hub.docker.com/r/sharedvolume/nfs-server


https://grok.com/share/bGVnYWN5_0552f0dc-ea5d-4727-8ff8-e08fd0611e28

https://github.com/normal-computing/docker-nfs-server

source https://github.com/ehough/docker-nfs-server

https://github.com/ehough/docker-nfs-server/issues/72

og source https://github.com/kubernetes/examples/tree/d6b8cd27eacb51e651a1aa6f7c190a28713eff6e/_archived/volumes/nfs/nfs-data


--- 

# OLD OLD

easy bad nfs mount

** WIP not wokring  **

https://github.com/vgist/dockerfiles/tree/master/nfs-server
https://hub.docker.com/r/gists/nfs-server

https://github.com/kubernetes-csi/csi-driver-nfs/tree/master/deploy/example/nfs-provisioner

https://gist.github.com/pangyuteng/e7286fd461aad1c59cea69ce5558a63e

# found it - OG kube nfs service pv pvc example by google
https://github.com/kubernetes/examples/tree/d6b8cd27eacb51e651a1aa6f7c190a28713eff6e/_archived/volumes/nfs


# copy cats materials
https://github.com/AdnanHodzic/nfs-server-k8s
https://github.com/alphayax/docker-volume-nfs/blob/master/example/nfs-server.yaml

kubectl get pods -n httpbin

kubectl describe pods nfs-pod-pvc -n httpbin

kubectl exec -it nfs-pod-pvc -n httpbin -- bash

apt update && apt install nfs-common -yq
mkdir ok
mount -t nfs nfs-service.httpbin.svc.cluster.local:/ ok

mount -v -t nfs -o port=2049,vers=4 nfs-service.httpbin.svc.cluster.local:/ ok
