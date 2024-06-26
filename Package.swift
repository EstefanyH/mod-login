// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Login-Module",
    defaultLocalization: "en", 
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Login-Module",
            targets: ["Login-Module"]),
    ],
    dependencies: [
        .package(path: "../mod-entity"),
        .package(path: "../mod-component"),
        //.package(url: "https://github.com/EstefanyH/mod-entity.git", from: "RF-1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Login-Module",
            //dependencies: ["mod-entity"],
            dependencies: [
                .product(name: "Entity-Module", package: "mod-entity"),
                .product(name: "Component-Module", package: "mod-component")],
            resources: [
                .process("swiftbeta.png")
            ]),
        .testTarget(
            name: "Login-ModuleTests",
            dependencies: ["Login-Module"]),
    ]
)
