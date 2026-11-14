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
            url: "https://github.com/portolans/unityads-releases/releases/download/4.22.0/UnityAds.xcframework.zip",
            checksum: "93a0fecc4e3a7b70daf8545ce602eb9a194839253aad9c89f68da7e1e12002c6",
        ),
    ],
)
