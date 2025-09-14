ARG VERSION

FROM ubuntu:${VERSION}

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update
RUN apt install -y sudo nano gdb proftpd apache2 build-essential git 

RUN apt install -y clang uthash-dev libelf-dev libbfd-dev libcapstone-dev  libreadline-dev libiberty-dev libgsl-dev build-essential git debootstrap file cargo

WORKDIR /tmp/
RUN git clone https://github.com/endrazine/wcc.git
WORKDIR /tmp/wcc/
RUN git checkout v0.0.11 && git submodule init && git submodule update && make && make install

WORKDIR /root/
COPY apache_relink.tgz .
RUN tar -xvzf apache_relink.tgz
WORKDIR /root/apache_relink

RUN make

CMD ["/bin/bash"]
