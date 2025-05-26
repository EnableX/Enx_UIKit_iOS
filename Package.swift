
// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Enx_UIKit_iOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Enx_UIKit_iOS", targets: ["Enx_UIKit_iOS"]),
        .library(name: "EnxRTCiOS", targets: ["EnxRTCiOS"]),
        .library(name: "EnablexWebRTC", targets: ["EnablexWebRTC"])
    ],
    targets: [
        .binaryTarget(
            name: "Enx_UIKit_iOS",
            url: "https://developer.enablex.io/downloads/ui-kit/ios/Enx_UIKit_iOS.xcframework_2.1.11.zip",
            checksum: "a884c4bd351addcb415384a90e788dbf9a1727e51a9d3729c06064135318ce69"
        ),
        .binaryTarget(
            name: "EnxRTCiOS",
            url: "https://developer.enablex.io/downloads/iOS_SDK_3.0.20/EnxRTCiOS.xcframework_3.0.20.zip",
            checksum: "e246b8f951cf222829d1b5ef7c615d4a2e37844983d5f1c06533a8219252e1e6"
        ),
        .binaryTarget(
            name: "EnablexWebRTC",
            url: "https://developer.enablex.io/downloads/EnablexWebRTC.xcframework_1.0.4.zip",
            checksum: "6ef4e8c6f78eddbc9d4f478ea14fb111cf58199a976b15aff37779ae0fe04b6c"
        )
    ]
)
