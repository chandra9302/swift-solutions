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
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-collections.git", 
            .upToNextMinor(from: "1.1.0") // or `.upToNextMajor
        )
    ],
    targets: [
        .target(
            name: "main",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ]),
        .testTarget(
            name: "tests",
            dependencies: ["main"]),
    ]
)