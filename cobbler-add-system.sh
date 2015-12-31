#!/bin/sh

cobbler system add --name=test --profile=fedora17-x86_64
cobbler system edit --name=test --interface=eth0 --mac=00:11:22:AA:BB:CC --ip-address=192.168.1.100 --netmask=255.255.255.0 --static=1 --dns-name=test.mydomain.com
cobbler system edit --name=test --gateway=192.168.1.1 --hostname=test.mydomain.com
