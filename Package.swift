// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftCollectionDifference",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "SwiftCollectionDifference",
      targets: ["SwiftCollectionDifference"]),
  ],
  targets: [
    .target(
      name: "SwiftCollectionDifference"),
    .testTarget(
      name: "SwiftCollectionDifferenceTests",
      dependencies: ["SwiftCollectionDifference"]),
  ]
)
