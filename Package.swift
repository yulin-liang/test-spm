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
  targets: [
    .target(
      name: "spm-demo",
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
      ]
    ),
  ]
)

