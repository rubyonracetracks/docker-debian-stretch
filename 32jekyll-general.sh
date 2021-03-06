#!/bin/bash

ABBREV='jekyll-general'
OWNER='rubyonracetracks'
DISTRO='debian'
SUITE='stretch'
DOCKER_IMAGE="$OWNER/32bit-$DISTRO-$SUITE-$ABBREV"
CONTAINER="32bit-container-$DISTRO-$SUITE-$ABBREV"
TGZ_FILE="32bit-$DISTRO-$SUITE-$ABBREV.tgz"

echo 'By default, your host port numbers are:'
echo '  Jekyll web server: 4000'
echo
echo 'If you wish to work with multiple Docker images, you may need to use a'
echo 'different offset for each one in order to avoid conflicts.'
echo
echo 'Enter the desired offset for your port numbers.'
read OFFSET

P4000=$(( 4000+OFFSET ))

bash setup.sh $ABBREV $DOCKER_IMAGE $CONTAINER $TGZ_FILE $P4000 '4000'
