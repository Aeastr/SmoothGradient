// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "SmoothGradient",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .macCatalyst(.v14),
        .tvOS(.v14),
        .watchOS(.v7),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "SmoothGradient",
            targets: ["SmoothGradient"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing",
            from: "1.11.0"
        )
    ],
    targets: [
        .target(
            name: "SmoothGradient"
        ),
        .testTarget(
            name: "SmoothGradientTests",
            dependencies: [
                "SmoothGradient",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ],
            exclude: [
                "__Snapshots__"
            ]
        )
    ]
)
