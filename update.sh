#!/bin/sh
#
# Update plugins
#

git submodule init

for bundle in bundle/*; do
    if [ -d "$bundle" ]; then
	echo "Updating $bundle"
	( cd $bundle; git submodule update)
    fi
done
