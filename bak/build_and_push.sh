docker build -t pangyuteng/nfs-server -f Dockerfile.nfs-server .
docker push pangyuteng/nfs-server

docker build -t pangyuteng/httpbin-nfs -f Dockerfile.httpbin .
docker push pangyuteng/httpbin-nfs 
