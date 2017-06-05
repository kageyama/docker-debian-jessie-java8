FROM debian:8.8

RUN apt-get update
RUN apt-get install -y wget
RUN wget -q -O /var/tmp/jdk-8u131-linux-x64.tar.gz --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz"
RUN mkdir /usr/lib/jvm
RUN tar zxf /var/tmp/jdk-8u131-linux-x64.tar.gz -C /usr/lib/jvm
RUN ln -s /usr/lib/jvm/jdk1.8.0_131 /usr/lib/jvm/jdk8
