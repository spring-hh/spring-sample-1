FROM amazonlinux:2

RUN mkdir /code
WORKDIR /code

RUN amazon-linux-extras enable corretto8 && \
    yum install -y java-1.8.0-amazon-corretto-devel && \
    yum install which -y && \
    yum install httpd -y && \
    yum install tomcat -y

COPY . /code