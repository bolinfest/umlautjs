#!/bin/bash

rm -rf build
mkdir build
java -jar plovr.jar build config.js > build/ü.js

# Need this to work around a bug in the Closure Compiler.
# Also, without this change, the gzip size is >140 characters.
sed -i -e 's/\\u00fc/ü/g' build/ü.js

# Manually inspect to see whether the gzip size is <= 140 characters.
gzip -c build/ü.js > build/ü.js.gz

wc --bytes build/ü.js.gz
