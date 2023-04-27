FROM ubuntu:latest
RUN apt update && apt install -y isc-dhcp-server
COPY dhcpd.conf /etc/dhcp/dhcpd.conf
RUN  touch /var/lib/dhcp/dhcpd.leases
ENTRYPOINT dhcpd -f -d -4 --no-pid -cf /etc/dhcp/dhcpd.conf