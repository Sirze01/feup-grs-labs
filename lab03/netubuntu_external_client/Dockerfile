FROM ubuntu:20.04
RUN apt update && apt install -y vim iproute2 iputils-ping tcpdump iptables dnsutils curl
COPY . /root/
COPY resolv.conf /etc/resolv.conf
CMD /root/sleep.sh
