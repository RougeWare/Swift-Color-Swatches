// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorSwatches",
    
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .tvOS(.v13),
    ],
    
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ColorSwatches",
            targets: ["ColorSwatches"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "RectangleTools", url: "https://github.com/RougeWare/Swift-Rectangle-Tools.git", from: "2.10.1"),
        .package(name: "DrawingTools",   url: "https://github.com/RougeWare/Swift-Drawing-Tools.git",   from: "2.1.0"),
        .package(name: "CrossKitTypes",  url: "https://github.com/RougeWare/Swift-Cross-Kit-Types.git", from: "1.0.0"),
        .package(name: "SwiftImage",     url: "https://github.com/koher/swift-image.git",               from: "0.7.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ColorSwatches",
            dependencies: ["RectangleTools", "DrawingTools", "CrossKitTypes"]),
        .testTarget(
            name: "ColorSwatchesTests",
            dependencies: ["ColorSwatches", "SwiftImage"]),
    ]
)
