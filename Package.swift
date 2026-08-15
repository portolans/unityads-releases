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
            url: "https://github.com/portolans/unityads-releases/releases/download/4.20.0/UnityAds.xcframework.zip",
            checksum: "345197f3bb833969a4cc1688aebc3ab15ad85f7f8964e5e91110cf51e1fd3ad5",
        ),
    ],
)
