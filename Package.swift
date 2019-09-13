// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EonilFSEvents",
    platforms: [
        .macOS(.v10_10),
    ],
    products: [
        .library(name: "EonilFSEvents", targets: ["EonilFSEvents"]),
        .executable(name: "EonilFSEventsDemoCLI", targets: ["EonilFSEventsDemoCLI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "EonilFSEvents", dependencies: []),
        .target(name: "EonilFSEventsDemoCLI", dependencies: ["EonilFSEvents"]),
    ]
)
