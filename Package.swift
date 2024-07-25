// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "THCalendarDatePicker",
  products: [
    .library(
      name: "THCalendarDatePicker",
      targets: ["THCalendarDatePicker"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Redugsi/KNSemiModalViewController.git", branch: "main"),
  ],
  targets: [
    .target(
      name: "THCalendarDatePicker",
      resources: [
        .process("Resources")
      ],
      publicHeadersPath: "include"
    ),
    .testTarget(
      name: "THCalendarDatePickerTests",
      dependencies: ["THCalendarDatePicker"]),
  ]
)
