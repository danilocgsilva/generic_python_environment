FROM debian:bookworm-20260918-slim

RUN apt update
RUN apt install -y \
    sudo \
    openssh-server \
    lsb-release \
    ca-certificates \
    apt-transport-https \
    software-properties-common \
    gnupg2

RUN mkdir -p /run/sshd
RUN chmod 755 /run/sshd
RUN ssh-keygen -A

RUN useradd -ms /bin/bash pythondcgs
RUN echo "pythondcgs:dcssstrongpassw" | chpasswd
RUN usermod -aG sudo pythondcgs
RUN echo "pythondcgs ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN chown -R pythondcgs:pythondcgs /home/pythondcgs

EXPOSE 22

CMD ["/bin/bash", "-c", "/usr/sbin/sshd -D"]




