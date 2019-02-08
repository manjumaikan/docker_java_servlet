FROM alpine:latest
RUN apk add openjdk8 && \
    apk add maven
RUN mkdir java_servlet
ENV JAVA_SERVLET_PATH /java_servlet
ADD pom.xml /java_servlet/
RUN cd $JAVA_SERVLET_PATH && \
mkdir src
COPY src $JAVA_SERVLET_PATH/src
RUN cd $JAVA_SERVLET_PATH && \
    mvn clean package
#RUN java -DCUSTOM_PORT="9010" -jar $JAVA_SERVLET_PATH/target/custom-java-servlet-jar-with-dependencies.jar