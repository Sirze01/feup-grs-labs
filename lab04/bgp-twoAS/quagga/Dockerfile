FROM ubuntu:20.04
# baseline network tools
RUN apt update && apt install -y nano iproute2 iputils-ping tcpdump iptables dnsutils curl iputils-tracepath

RUN apt update && apt install -y telnet

# quagga
RUN apt update && apt install -y quagga systemctl
RUN mkdir -p /var/log/quagga
RUN chown quagga:quagga /var/log/quagga
RUN mkdir /run/quagga
RUN chmod a+w /run/quagga

COPY sleep.sh /root/sleep.sh
COPY start.sh /root/start.sh
COPY start-bgp.sh /root/start-bgp.sh
CMD /root/start.sh