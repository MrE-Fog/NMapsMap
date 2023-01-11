#!/bin/sh

set -e

VERSION="release/3.16.1"

# git clone --depth=1 --branch="${VERSION}" https://github.com/navermaps/NMapsMap.git

curl --location -o NMapsMap.zip "https://github.com/navermaps/NMapsMap/releases/download/${VERSION}/NMapsMap.framework.zip"

unzip NMapsMap.zip -d NMapsMap

rm NMapsMap.zip

mv NMapsMap/framework/NMapsMap.xcframework NMapsMap.xcframework

zip -r NMapsMap.xcframework.zip NMapsMap.xcframework -x \*.DS_Store

rm -r NMapsMap.xcframework

rm -r NMapsMap

swift package compute-checksum NMapsMap.xcframework.zip
