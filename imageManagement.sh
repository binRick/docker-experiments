#!/bin/bash
set -e
time sh -c "docker ps -a |cut -d' ' -f1|grep -v CONTA|xargs docker rm; docker image rm centos:latest;  time ssh -q root@$SERVER 'docker save centos:latest -o /root/centos-latest.tar' && time docker load < ~/centos-latest.tar"
