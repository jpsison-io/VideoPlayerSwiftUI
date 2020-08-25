// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VideoPlayerSwiftUI",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "VideoPlayerSwiftUI",
            type: .dynamic,
            targets: ["VideoPlayer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/wxxsw/GSPlayer.git", from: "0.2.11"),
    ],
    targets: [
        .target(
            name: "VideoPlayer",
            dependencies: ["GSPlayer"],
            path: "Sources"
        ),
    ]
)
