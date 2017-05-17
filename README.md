# dnspi-arm

A simple dockerfile for now that will allow Bind/Webmin to run as a container on a raspberry piv3 with armv7.  A lot of this is unfortunately persistent because of the bind database so if someone wants to use the dockerfile please remove the volume with were you want the persistent data.  This is strictly for the configuration options and zones. 

Find the docker container at
https://hub.docker.com/r/burnyd/dnspi 
