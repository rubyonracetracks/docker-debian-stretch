#!/bin/bash

CONTAINER='<CONTAINER>'
DOCKER_IMAGE='<DOCKER_IMAGE>'

sh remove_containers.sh

sh copy_new.sh $DOCKER_IMAGE
