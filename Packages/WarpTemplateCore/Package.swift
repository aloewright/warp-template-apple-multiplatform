// swift-tools-version: 6.0
// AGPL-3.0-or-later

import PackageDescription

let package = Package(
    name: "WarpTemplateCore",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .watchOS(.v11)
    ],
    products: [
        .library(name: "WarpTemplateCore", targets: ["WarpTemplateCore"])
    ],
    dependencies: [
        .package(path: "../FoundationModelsBridge")
    ],
    targets: [
        .target(
            name: "WarpTemplateCore",
            dependencies: ["FoundationModelsBridge"],
            path: "Sources/WarpTemplateCore"
        )
    ]
)
