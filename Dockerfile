FROM ubuntu:latest

MAINTAINER "Geert-Johan Riemer <geertjohan@geertjohan.net>"

# install apt tools
RUN sudo apt-get update && sudo apt-get -y install software-properties-common python-software-properties

# add xpra apt repo
RUN sudo apt-get -y install curl && curl http://winswitch.org/gpg.asc | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://winswitch.org/ trusty main" > /etc/apt/sources.list.d/winswitch.list';
RUN sudo add-apt-repository universe;

# update and install xpra
RUN sudo apt-get update && sudo apt-get -y install xpra
