FROM ubuntu
MAINTAINER shubham
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
EXPOSE 80
CMD ["apache2 ctl", "-D", "FOREGROUND"]
