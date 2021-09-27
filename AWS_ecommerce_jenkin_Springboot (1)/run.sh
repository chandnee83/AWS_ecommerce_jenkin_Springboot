#!/bin/bash
serverPort=$1
echo $1

sudo su

#####
##### DONT CHANGE HERE ##############
#jar file
# $WORKSPACE is a jenkins var
echo $WORKSPACE
destFile=/var/lib/jenkins/.m2/repository/in/co/ecommerce/E-Commerce/0.0.1-SNAPSHOT/E-Commerce-0.0.1-SNAPSHOT.war
echo $destFile
### FUNCTIONS
##############


nohup nice java -jar $destFile –server.port=$serverPort &

echo "COMMAND: nohup nice java -jar $destFile "