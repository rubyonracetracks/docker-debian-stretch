#!/bin/bash

# Check for regular user login
if [ ! $( id -u ) -ne 0 ]; then
  echo 'You must be a regular user to run this script.'
  exit 2
fi

CONTAINER='<CONTAINER>'

echo '******'
echo 'NOTICE'
echo '1. If this resume.sh script does not work, then there is probably no'
echo 'container to resume.  You likely need to run the download_new_image.sh or'
echo 'install_tgz_file.sh script first.'
echo '2. If you are connected to two Docker containers from the same image simultaneously,'
echo 'changes in one container (outside of the shared folder) do not propagate'
echo 'to the other.  Running the tmux tool inside the Docker container provides'
echo 'multi-shell access to the same container.'
echo

DATE=`date +%Y_%m%d_%H%M`

is='/bin/bash' # Initial script to run
hs=$PWD/shared # Host machine shared directory
ds='/home/winner/shared' # Docker shared directory

echo '------------------------------------'
echo "Starting Docker container $CONTAINER"
wait
docker start -i $CONTAINER
