
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
            url: "https://developer.enablex.io/downloads/ui-kit/ios/Enx_UIKit_iOS.xcframework_2.1.8.zip",
            checksum: "6bf0188fe3b7dd83db1b8d4290d0b6885c94ee15bc41a84919e9261db18540b2"
        ),
        .binaryTarget(
            name: "EnxRTCiOS",
            url: "https://developer.enablex.io/downloads/iOS_SDK_3.0.19/EnxRTCiOS.xcframework_3.0.19.zip",
            checksum: "cbc9ef5eb8ebd26de8e95fb36125a703fde4786146ae189c0d4dbd0a934278f1"
        ),
        .binaryTarget(
            name: "EnablexWebRTC",
            url: "https://developer.enablex.io/downloads/EnablexWebRTC_1.0.3.zip",
            checksum: "6ef4e8c6f78eddbc9d4f478ea14fb111cf58199a976b15aff37779ae0fe04b6c"
        )
    ]
)
