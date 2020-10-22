// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "spm-demo",
  products: [
    .library(
      name: "spm-demo",
      targets: [
        "spm-demo",
      ]
    ),
  ],
  dependencies: [
    .package(
      name: "gRPC",
      url: "https://github.com/firebase/grpc-SwiftPM.git",
      .revision("5bb2669317ae2183f4cb00c675423af1924f0b46")
    ),
  ],
  targets: [
    .target(
      name: "spm-demo",
      dependencies: [
        .product(name: "gRPC-cpp", package: "gRPC"),
      ],
      path: ".",
      exclude: [
        "test/AppDelegate.h",
        "test/AppDelegate.m",
        "test/main.m",
        "test/SceneDelegate.h",
        "test/SceneDelegate.m",
        "test/ViewController.h",
        "test/ViewController.m",
      ],
      sources: [
        "test/Hello.cc",
      ],
      publicHeadersPath: "test/"
    ),
  ]
)

