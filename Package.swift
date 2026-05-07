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
            url: "https://github.com/portolans/unityads-releases/releases/download/4.18.0/UnityAds.xcframework.zip",
            checksum: "d97a9d85a128acd0110d92b5cd73e180b3d38e98621808a2cbfe0eca8c4bd4f9",
        ),
    ],
)
