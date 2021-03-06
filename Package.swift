// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "fluent-mysql-driver",
    products: [
        .library(name: "FluentMySQLDriver", targets: ["FluentMySQLDriver"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent-kit.git", .branch("master")),
        .package(url: "https://github.com/vapor/mysql.git", .branch("master")),
    ],
    targets: [
        .target(name: "FluentMySQLDriver", dependencies: ["FluentKit", "FluentSQL", "MySQLKit"]),
        .testTarget(name: "FluentMySQLDriverTests", dependencies: ["FluentBenchmark", "FluentMySQLDriver"]),
    ]
)
