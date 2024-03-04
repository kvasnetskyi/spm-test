// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    products: [
        .library(
            name: "MyFirstLibrary",
            targets: ["MyFirstLibrary"]
        ),
        .library(
            name: "MySecondLibrary",
            targets: ["MySecondLibrary"]
        )
    ],
    targets: [
        .target(
            name: "MyFirstLibrary"
        ),
        .testTarget(
            name: "MyFirstLibraryTests",
            dependencies: ["MyFirstLibrary"]
        ),
        .target(
            name: "MySecondLibrary",
            dependencies: ["MyFirstLibrary"]
        ),
        .testTarget(
            name: "MySecondLibraryTests",
            dependencies: ["MySecondLibrary"]
        ),
    ]
)
