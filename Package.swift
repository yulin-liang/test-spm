// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

/*
 This source file is part of the Swift.org open source project

 Copyright 2015 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import PackageDescription

let package = Package(
    name: "PlayingCard",
    products: [
        .library(name: "PlayingCard", targets: ["PlayingCard"]),
    ],
    dependencies: [
      .package(
        name: "gRPC",
        url: "https://github.com/yulin-liang/grpc.git",
        .revision("4b676f534b1323a2ad08660288ae15d3041f5cfa")
      ),
    ],
    targets: [
        .target(
            name: "PlayingCard",
            dependencies: [.product(name: "gRPC-cpp", package: "gRPC"),]),
        .testTarget(
            name: "PlayingCardTests",
            dependencies: ["PlayingCard"]),
    ]
)
