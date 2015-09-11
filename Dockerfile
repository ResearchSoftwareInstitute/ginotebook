FROM sshd_base
MAINTAINER Michael Stealey <michael.j.stealey@gmail.com>

ENV PYTHONUNBUFFERED 1

USER root
ADD . /home/docker/ginotebook

# create docker user
WORKDIR /home/docker
RUN groupadd docker
RUN useradd -m docker -g docker
RUN echo docker:docker | chpasswd
RUN chown -R docker:docker /home/docker

WORKDIR /home/docker/ginotebook
