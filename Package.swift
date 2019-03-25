// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Raconteur",
    products: [
        .library(
            name: "Raconteur",
            targets: ["Raconteur"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "Raconteur",
            dependencies: []),
        .testTarget(
            name: "RaconteurTests",
            dependencies: ["Raconteur"]),
    ]
)
