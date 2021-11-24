FROM tomcat:9
RUN apt update
RUN apt-get install default-jdk -y
RUN apt-get install maven -y
RUN apt-get install git -y
WORKDIR /home/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /home/test/boxfuse-sample-java-war-hello/ && mvn package
RUN cd /home/test/boxfuse-sample-java-war-hello/target && cp hello-1.0.war /usr/local/tomcat/webapps