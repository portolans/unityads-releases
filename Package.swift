// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "UnityAds",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "UnityAds",
            targets: ["UnityAds"],
        ),
    ],
    targets: [
        .target(
            name: "UnityAds",
            dependencies: ["UnityAdsBinary"],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")],
        ),
        .binaryTarget(
            name: "UnityAdsBinary",
            url: "https://github.com/portolans/unityads-releases/releases/download/4.16.5/UnityAds.xcframework.zip",
            checksum: "1634132ec7dcdf2cd416fecd7874dd4163f4b4150ca284fece077af81d5ed11d",
        ),
    ],
)
