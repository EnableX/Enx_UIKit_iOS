
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Enx_UIKit_iOS",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Enx_UIKit_iOS", targets: ["Enx_UIKit_iOS","EnxRTCiOSWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/EnableX/EnxRTCiOS.git", from: "3.1.2")
    ],
    targets: [
        .binaryTarget(
            name: "Enx_UIKit_iOS",
            url: "https://developer.enablex.io/downloads/ui-kit/ios/Enx_UIKit_iOS.xcframework_2.2.0.zip",
            checksum: "f50a8b430ed6a35a9ba437f20d3abdab2e0cfdfe4c32c2cb29aecc757f6f0e9a"
        ),
        .target(
            name: "EnxRTCiOSWrapper",
            dependencies: [
                .product(name: "EnxRTCiOS", package: "EnxRTCiOS")
            ],
            path: "Sources/EnxRTCiOS"
        )
    ]
)
