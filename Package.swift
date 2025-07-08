
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Enx_UIKit_iOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Enx_UIKit_iOS", targets: ["Enx_UIKit_iOS","EnxRTCiOSWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/EnableX/EnxRTCiOS.git", from: "3.1.1")
    ],
    targets: [
        .binaryTarget(
            name: "Enx_UIKit_iOS",
            url: "https://developer.enablex.io/downloads/ui-kit/ios/Enx_UIKit_iOS.xcframework_2.1.12.zip",
            checksum: "b7fef399765544a4c6646c7f20a5bc78829acc160fe80d41e29d51cb1b2f0d10"
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
