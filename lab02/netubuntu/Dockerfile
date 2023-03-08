FROM ubuntu:20.04
RUN apt update && apt install -y vim iproute2 iputils-ping tcpdump iptables dnsutils curl
RUN wget -P /tmp/ncpa/ https://assets.nagios.com/downloads/ncpa/ncpa-2.4.1.d9.amd64.deb
RUN dpkg -i /tmp/ncpa/ncpa-2.4.1.d9.amd64.deb
COPY sleep.sh /root/sleep.sh
CMD /root/sleep.sh
