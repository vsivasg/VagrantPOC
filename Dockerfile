FROM ubuntu:14.04.1
MAINTAINER Venkata Siva "vsiva.sg@gmail.com"
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible
RUN apt-get install -y rsync
ADD playbook.yml playbook.yml
RUN ansible-playbook playbook.yml -c local
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx"]