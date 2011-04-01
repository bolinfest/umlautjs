#!/bin/bash

DIR=${DIR:-/www/ujs.com/}

./build.sh
cp index.html ${DIR}index.html
cp build/ü.js ${DIR}ü.js
cp ü_test.html ${DIR}ü_test.html
cp favicon.ico ${DIR}favicon.ico