
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
        .package(url: "https://github.com/EnableX/EnxRTCiOS.git", from: "3.1.3")
    ],
    targets: [
        .binaryTarget(
            name: "Enx_UIKit_iOS",
            url: "https://developer.enablex.io/downloads/ui-kit/ios/Enx_UIKit_iOS.xcframework_2.2.1.zip",
            checksum: "cb70b262cbd39fe61440ed4a95cbf4f637ff1b66f85ba1f363ae534f966fc8b5"
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
