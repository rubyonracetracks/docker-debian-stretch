#!/bin/bash

# This script verifies that you can create a React app.

echo '---------------------------'
echo 'npx create-react-app my-app'
npx create-react-app my-app

echo '---------------------------------'
echo 'cat /home/winner/shared/ports.txt'
cat /home/winner/shared/ports.txt
echo '************************************************'
echo 'The port number assignments are displayed above.'
echo 'The output port used in this Docker container is 3000.'
echo 'The corresponding port to use in your web browser may be different.'
echo
echo    'Press Enter to start the web server.'
read -p '************************************' continue
echo '----------------------'
echo 'cd my-app && npm start'
cd my-app && npm start
