// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "NMapsMap",
    defaultLocalization: "ko",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "NMapsMap",
            targets: [
                "NMapsMap",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.16.1/NMapsMap.xcframework.zip",
            checksum: "815c557be36d86e5569fb24ef68abe440ecac8d6a1150f4a9e3e3e9ce15fe7d8"
        ),
    ]
)
