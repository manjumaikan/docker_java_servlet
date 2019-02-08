# java_servlet on Docker

Java servlet on an Alpine Linux docker image

prerequisite:

docker

build:

docker build -t <name_of_the_docker_image> .

run:

default port: docker run --name <name_of_the_docker_container> -d -p <local_port_exposed>:9000 <name_of_the_docker_image> java -jar /java_servlet/target/custom-java-servlet-jar-with-dependencies.jar

Eg: docker run --name custom-java-servlet -d -p 9020:9000 manju/custom-java java -jar /java_servlet/target/custom-java-servlet-jar-with-dependencies.jar

custom port: docker run --name <name_of_the_docker_container> -d -p <local_port_exposed>:<custom_port> <name_of_the_docker_image> java -DCUSTOM_PORT="<custom_port>" -jar /java_servlet/target/custom-java-servlet-jar-with-dependencies.jar

Eg: docker run --name custom-java-servlet -d -p 9020:9010 manju/custom-java java -DCUSTOM_PORT="9010" -jar /java_servlet/target/custom-java-servlet-jar-with-dependencies.jar

usage:

Java servlet is exposed on the local port which is exposed during the run.

root context: <http://localhost:<local_port_exposed>/>

get header info: <http://localhost:<local_port_exposed>/echoHeader>

custom http get: <http://localhost:<local_port_exposed>/echoGet?name=Peter,Udayan,Manju>

reference:

<https://www.codeproject.com/Tips/1040097/Create-a-Simple-Web-Server-in-Java-HTTP-Server>