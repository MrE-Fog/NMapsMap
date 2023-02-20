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
    dependencies: [
        .package(url: "https://github.com/jaemyeong/NMapsGeometry.git", .upToNextMajor(from: "1.0.1")),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/jaemyeong/NMapsMap/releases/download/untagged-d3e6602a3ba185f26d47/NMapsMap.xcframework.zip",
            checksum: "137f99021527b07b7735a670e2c5592c2c453f9c78efc69293d3bc6fe742f7e0"
        ),
    ]
)
