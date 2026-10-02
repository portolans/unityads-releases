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
            url: "https://github.com/portolans/unityads-releases/releases/download/4.21.0/UnityAds.xcframework.zip",
            checksum: "aa4d69cdd97c712aa2b79470f2517ffd721e13e48de42cdc8db87246b6b5df03",
        ),
    ],
)
