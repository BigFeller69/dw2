FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
EXPOSE 80/tcp
WORKDIR /var/www/html
COPY html .
RUN date > buildtime.txt
CMD service apache2 start && bash
