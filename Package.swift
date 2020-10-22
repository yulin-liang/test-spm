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
      url: "https://github.com/yulin-liang/grpc.git",
      .revision("9a7a2fab18823c107ca61d187047981dc8cd2314")
    ),
  ],
  targets: [
    .target(
      name: "spm-demo",
      dependencies: [
        .product(name: "gRPC-Core", package: "gRPC"),
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

