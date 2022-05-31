// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "d3-menu-bar",
    platforms: [
        .macOS("12"), .iOS("15"), .tvOS("15"), .watchOS("6")
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "d3-menu-bar",
            targets: ["d3-menu-bar"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/The-Igor/d3-color.git" , from: "2.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "d3-menu-bar",
            dependencies: ["d3-color"]),
        .testTarget(
            name: "d3-menu-barTests",
            dependencies: ["d3-menu-bar"]),
    ]
)
