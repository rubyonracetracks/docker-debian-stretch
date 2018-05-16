#!/bin/bash

CONTAINER='<CONTAINER>'

echo '-------------------------------'
echo "docker ps -a | grep $CONTAINER"
docker ps -a | grep $CONTAINER

echo '++++++++++++++++++++++++++'
echo 'Removing Docker containers'
for i in $(docker ps -a | grep $CONTAINER | awk '{print $1}')
do
  echo '--------------'
  echo "docker kill $i"
  docker kill $i
  wait
  echo '---------------'
  echo "docker rm -f $i"
  docker rm -f $i
  wait
done;

echo '-------------------------------'
echo 'docker ps -a | grep <CONTAINER>'
docker ps -a | grep <CONTAINER>
