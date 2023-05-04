FROM internetsystemsconsortium/bind9:9.16
RUN apt update && apt install -y nano iproute2 iputils-ping tcpdump curl dnsutils iptables
COPY named.conf.local /etc/bind/named.conf.local
COPY dns_script.sh /root/dns_script.sh

COPY start.sh /root/start.sh
ENTRYPOINT []
CMD /root/start.sh
