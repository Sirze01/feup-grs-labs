FROM ubuntu:latest
RUN apt update && apt install -y vim iproute2 iputils-ping tcpdump iptables dnsutils curl nano telnet iputils-tracepath
COPY . /root/
CMD /root/sleep.sh
