// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift Color Swatches",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ColorSwatches",
            targets: ["ColorSwatches"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/RougeWare/Swift-Rectangle-Tools.git", from: "2.4.0"),
        .package(url: "https://github.com/BenLeggiero/Swift-Drawing-Tools.git", .branch("feature/MVP")),
        .package(url: "https://github.com/RougeWare/Swift-Cross-Kit-Types.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ColorSwatches",
            dependencies: ["RectangleTools", "DrawingTools", "CrossKitTypes"]),
        .testTarget(
            name: "ColorSwatchesTests",
            dependencies: ["ColorSwatches"]),
    ]
)