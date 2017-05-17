# dnspi-arm

A simple dockerfile for now that will allow Bind/Webmin to run as a container on a raspberry piv3 with armv7.  A lot of this is unfortunately persistent because of the bind database.  However, that can be moved to another source where the bind.options and bind.config files are located. 

Find the docker container at
https://hub.docker.com/r/burnyd/dnspi 
