#!/bin/sh

set -e

VERSION="release/3.16.1"

curl --location -o NMapsMap.zip "https://github.com/navermaps/NMapsMap/releases/download/${VERSION}/NMapsMap.framework.zip"

unzip NMapsMap.zip -d NMapsMap

rm NMapsMap.zip

mv NMapsMap/framework/NMapsMap.xcframework NMapsMap.xcframework

zip -r NMapsMap.xcframework.zip NMapsMap.xcframework -x \*.DS_Store

rm -rf NMapsMap.xcframework

rm -rf NMapsMap

swift package compute-checksum NMapsMap.xcframework.zip

VERSION="release/1.0.1"

git clone --depth=1 --branch="${VERSION}" https://github.com/navermaps/NMapsGeometry.git

mv NMapsGeometry/framework/NMapsGeometry.xcframework NMapsGeometry.xcframework

zip -r NMapsGeometry.xcframework.zip NMapsGeometry.xcframework -x \*.DS_Store

rm -rf NMapsGeometry.xcframework

rm -rf NMapsGeometry

swift package compute-checksum NMapsGeometry.xcframework.zip
