docker build -t instancia1img .
docker build -t instancia2img .
docker network create --subnet=119.18.0.0/16 mynet

docker run -d --name instancia1 -p 9801:9800 --net mynet --ip 119.18.0.11 instancias1img
docker run -d --name instancia2 -p 9802:9800 --net mynet --ip 119.18.0.22 instancias2img

docker exec instancia1 bash -c "/etc/init.d/ssh start; /etc/init.d/ssh status; pm2 status"
docker exec instancia2 bash -c "/etc/init.d/ssh start; /etc/init.d/ssh status; pm2 status"
