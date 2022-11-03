FROM amazonlinux:2

RUN yum install -y shadow-utils tar gzip sudo git
RUN adduser vscode
RUN echo 'vscode ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN mkdir /code
WORKDIR /code

RUN amazon-linux-extras enable corretto8 && \
    yum install -y java-1.8.0-amazon-corretto-devel && \
    yum install which -y && \
    yum install httpd -y && \
    yum install tomcat -y && \
    yum install tomcat-webapps admin-webapps

COPY . /code
