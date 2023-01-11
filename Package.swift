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
                "NMapsGeometry",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.16.1/NMapsMap.xcframework.zip",
            checksum: "1bd39a480c2d0136c98c00a45f1b976537422a4e435539eccd35c63f272fc5be"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            url: "https://github.com/jaemyeong/NMapsMap-SPM/releases/download/3.16.1/NMapsGeometry.xcframework.zip",
            checksum: "f9489d0c472b9a1569fbd1606a94d3164265a2f9d74144eb5cb546a826def2e2"
        ),
    ]
)
