// swift-tools-version: 6.0
// AGPL-3.0-or-later

import PackageDescription

let package = Package(
    name: "FoundationModelsBridge",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .watchOS(.v11)
    ],
    products: [
        .library(name: "FoundationModelsBridge", targets: ["FoundationModelsBridge"])
    ],
    targets: [
        .target(
            name: "FoundationModelsBridge",
            path: "Sources/FoundationModelsBridge"
        )
    ]
)
