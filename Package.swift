
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
            url: "https://developer.enablex.io/downloads/iOS_SDK_3.1.0/EnxRTCiOS.xcframework_3.1.0.zip",
            checksum: "9d40b991426f7010944eb2ce601573d4c3645e3cf52bbf80bb13510675afd703"
        ),
        .binaryTarget(
            name: "EnablexWebRTC",
            url: "https://developer.enablex.io/downloads/EnablexWebRTC.xcframework_2.0.0.zip",
            checksum: "60fdf989c1fcf249a9f146cfa70654fef1b569319c5c6bd9d6d94e4edbf192a7"
        )
    ]
)
