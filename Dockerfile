FROM sshd_base
ENV PYTHONUNBUFFERED 1

# install from requirments.txt
USER root
ADD . /home/docker/ginotebook
WORKDIR /home/docker/ginotebook
ADD requirements.txt /home/docker/ginotebook/
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN apt-get install -y libpq-dev python-dev
RUN apt-get install -y postgresql-9.3 postgresql-client-common postgresql-common postgresql-client-9.3
RUN pip install -r requirements.txt

# create docker user
WORKDIR /home/docker
RUN groupadd docker
RUN useradd -m docker -g docker
RUN echo docker:docker | chpasswd
RUN chown -R docker:docker /home/docker

WORKDIR /home/docker/ginotebook
#USER docker

