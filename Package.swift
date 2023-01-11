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
            checksum: "567849ecb9f9e626ed5936ae186766036dfaf747d86535ab65f04f35da071d92"
        ),
    ]
)
