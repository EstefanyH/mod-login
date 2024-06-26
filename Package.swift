// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Login-Module",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Login-Module",
            targets: ["Login-Module"]),
    ],
    dependencies: [
        .package(path: "../mod-entity"),
        //.package(url: "https://github.com/EstefanyH/mod-entity.git", branch: "develop"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Login-Module",
            //dependencies: ["mod-entity"],
            dependencies: [.product(name: "mod-entity", package: "mod-entity")],
            resources: [
                .process("swiftbeta.png")
            ]),
        .testTarget(
            name: "Login-ModuleTests",
            dependencies: ["Login-Module"]),
    ]
)
