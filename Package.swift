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
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/portolans/unityads-releases/releases/download/4.16.5/UnityAds.xcframework.zip",
            checksum: "24e04a39730a3e395e645a705d1d88493d30f9fb9ffa901482b422b7f270fb16",
        ),
    ],
)
