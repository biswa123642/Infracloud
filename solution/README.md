docker pull infracloudio/csvserver:latest

docker run -d -p 9393:9300 infracloudio/csvserver:latest

docker ps -a

docker logs [container_id]

bash gencsv.sh 2 8

docker run -d -p 9393:9300 -v C:/test/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

docker stop [container_id]

docker rm [container_id]

docker run -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' -v C:/test/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

wget -O ./part-1-output http://localhost:9393/raw

docker logs [container_id] >& part-1-logs