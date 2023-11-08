# To create and run a image we can use command.
docker run -d -p 9393:9300 infracloudio/csvserver:latest

# We can run below command to check whether container is running or not.
docker ps -a

# As container is not running to debug so that, we can check the logs by running below command.
docker logs [container_id]
# we found and error "while reading the file "/csvserver/inputdata": open /csvserver/inputdata: no such file or directory"

# according to the instruction I created a shell script and execute the below command. 
bash gencsv.sh 2 8
# once the script execute successfully , its created inputFile in my current directory. 

# Now run again with updated data and store the inputFile under "/csvserver/inputdata" directory and run the container.
docker run -d -p 9393:9300 -v C:/test/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

# To stop the container, run the following command
docker stop [container_id]
# To delete the container, run the following command
docker rm [container_id]

# As per instruction to run the container with environment variable, execute below commnad.
docker run -d -p 9393:9300 -e CSVSERVER_BORDER='Orange' -v C:/test/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

# Run following commands which will generate a file with name part-1-output
wget -O ./part-1-output http://localhost:9393/raw

# To get the logs and store with an appropriate file, run the following command.
docker logs [container_id] >& part-1-logs
