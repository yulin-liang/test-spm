
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
    targets: [
      .target(
        name: "spm-demo",
        path: ".",
        sources: [
          "test/Hello.cc",
        ],
        Headers: [
          "test/Hello.h",
        ],
      )
    ]
  ],
)

