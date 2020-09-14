// swift-tools-version:5.1
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	platforms: [
		.macOS(.v10_15)
	],
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		// .package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", from: "4.0.0"),
		// .package(url: "https://github.com/adirburke/Perfect-HTTP.git", from: "4.0.0"),
		.package(path: "~/Dev/Perfect/Perfect-HTTP"),
		.package(path: "~/Dev/Perfect/Perfect-Net"),
		.package(path: "~/Dev/Perfect/Perfect-CZlib-src"),
		// .package(url: "https://github.com/PerfectlySoft/Perfect-CZlib-src.git", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
