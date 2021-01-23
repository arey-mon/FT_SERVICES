echo "BUILDING IMAGES"
docker build -t nginx srcs/nginx/
docker build -t php srcs/php/

echo "LAUNCHING MINIKUBE"
minikube start
minikube addons enable metrics-server
minikube addons enable dashboard

#SSH log _ mp
#FTPS idem
#MYSQL idem

#PATHS

#services = nginx, ftps, wp, mysql, php, grafana, influxdb
#volumes = wp, mysql, influxdb

echo "CREATING POD"
kubectl create -f srcs/

echo "DEPLOYMENT & LAUNCH"
kubectl apply -f ./srcs

#MINIKUBE

#ARCHIVES

#BUILD

#KUBECTL EXEC
#kubectl apply

#DELETE TMP

