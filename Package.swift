// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "apikey_xcmetrics",
    platforms: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .macOS(.v10_15),
    ],
    products: [
        .executable(name: "apikey_xcmetrics", targets: ["apikey_xcmetrics_app"]),
    ],
    dependencies: [
         .package(url: "https://github.com/spotify/XCMetrics", from: "0.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "apikey_xcmetrics",
            dependencies: [
                .product(name: "XCMetricsClient", package: "XCMetrics"),
                .product(name: "XCMetricsPlugins", package: "XCMetrics")
            ]
        ),
        .target(
            name: "apikey_xcmetrics_app",
            dependencies: ["apikey_xcmetrics"]
        ),
        .testTarget(
            name: "apikey_xcmetricsTests",
            dependencies: ["apikey_xcmetrics"]
        ),
    ]
)
