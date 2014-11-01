# Debian wheezy based image
#
# Todo décrire les modifications ici

FROM     debian:wheezy
MAINTAINER Aurélien Campergue "aurelien.campergue@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# Depots, mises a jour et installs

RUN (apt-get update && apt-get upgrade -y -q && apt-get dist-upgrade -y -q && apt-get -y -q autoclean && apt-get -y -q autoremove)
RUN apt-get install -y -q zsh vim
RUN cat /etc/apt/sources.list

#ADD etc/ /
#EXPOSE 22


