echo "LAUNCHING MINIKUBE"
minikube start --driver=docker
eval $(minikube docker-env)
minikube -p minikube docker-env
minikube addons enable metrics-server
minikube addons enable dashboard

#SSH log _ mp
#FTPS idem
#MYSQL idem

#PATHS

#services = nginx, ftps, wp, mysql, php, grafana, influxdb
#volumes = wp, mysql, influxdb

echo "INSTALLING METALLB"
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

echo "BUILDING IMAGES"
#asking for password
docker build -t nginx srcs/nginx/
docker build -t php srcs/php/
docker build -t php srcs/mysql/
docker build -t php srcs/ftps/

#echo "CREATING POD"
#kubectl create -f srcs/

echo "DEPLOYMENT & LAUNCH"
kubectl apply -f srcs/

#DELETE TMP

