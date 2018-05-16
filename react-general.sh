#!/bin/bash

ABBREV='react-general'
OWNER='rubyonracetracks'
DISTRO='debian'
SUITE='stretch'
DOCKER_IMAGE="$OWNER/$DISTRO-$SUITE-dev"
CONTAINER="container-$DISTRO-$SUITE-$ABBREV"
TGZ_FILE="$DISTRO-$SUITE-$ABBREV.tgz"

echo 'By default, your host port numbers are:'
echo '  React web server: 3000'
echo
echo 'If you wish to work with multiple Docker images, you may need to use a'
echo 'different offset for each one in order to avoid conflicts.'
echo
echo 'Enter the desired offset for your port numbers.'
read OFFSET

P3000=$(( 3000+OFFSET ))

bash setup.sh $ABBREV $DOCKER_IMAGE $CONTAINER $TGZ_FILE $P3000 '3000'
