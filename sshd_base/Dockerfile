FROM ubuntu:trusty
MAINTAINER Michael Stealey <michael.j.stealey@gmail.com>

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:docker' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

# install from requirments.txt
USER root
ADD . /home/docker/base_image
WORKDIR /home/docker/base_image
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN apt-get update
RUN apt-get install -y libpq-dev python-dev
RUN apt-get install -y postgresql-9.3 postgresql-client-common postgresql-common postgresql-client-9.3
RUN pip install -r requirements.txt

# install geo requirements
RUN sudo apt-get install -y binutils libproj-dev gdal-bin libgeoip1 gdal-bin python-gdal

# install other packages
RUN sudo apt-get install rsync

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]