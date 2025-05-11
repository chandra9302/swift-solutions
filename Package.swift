// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "swift-solutions",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "main",
            targets: ["main"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "main",
            dependencies: []),
        .testTarget(
            name: "tests",
            dependencies: ["main"]),
    ]
)