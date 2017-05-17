FROM ioft/armhf-ubuntu

MAINTAINER DanielHertzberg

EXPOSE 53:53/udp
EXPOSE 53:53/tcp
EXPOSE 10000:10000

VOLUME ["/media/nfs/APPoSBooks/dns:/data"]

RUN apt-get install wget -y
 
RUN cd /root && \
    wget http://www.webmin.com/jcameron-key.asc && \
    apt-key add jcameron-key.asc && \
    echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list && \
    echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list

RUN apt-get update -y && apt-get install webmin bind9 bind9utils bind9-doc vim fping -y
CMD cp /data/zones/named.conf.local /etc/bind/named.conf.local && /data/zones/named.conf.options /etc/bind/named.conf.options
CMD service webmin start && service bind9 start
CMD /usr/share/webmin/changepass.pl /etc/webmin root password
