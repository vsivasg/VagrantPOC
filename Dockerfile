FROM ubuntu:14.04.1
MAINTAINER Venkata Siva "vsiva.sg@gmail.com"
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get install -y rsync
ADD playbook.yml playbook.yml
ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-enabled/default
ADD site/index.html /var/www/site/index.html
RUN ansible-playbook playbook.yml -c local
EXPOSE 80
CMD ["nginx"]