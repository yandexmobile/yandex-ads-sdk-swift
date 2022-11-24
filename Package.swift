// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMobileAdsPackage",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "YandexMobileAdsPackage", targets: ["YandexMobileAdsTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/yandexmobile/metrica-sdk-ios", "4.0.0"..<"5.0.0"),
    ],
    targets: [
        .target(
            name: "YandexMobileAdsTarget",
            dependencies: [
                .target(name: "YandexMobileAds"),
                .target(name: "YandexMobileAdsInstream"),
                .product(name: "YandexMobileMetrica", package: "metrica-sdk-ios"),
            ],
            path: "YandexMobileAdsTarget",
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("WebKit"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("AdSupport"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreMedia"),
            ]
        ),
        .binaryTarget(
            name: "YandexMobileAds",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.3.1/YandexMobileAds.xcframework.zip",
            checksum: "bbaaf731c5021cc1d58fbeaaa521e73fc3945a0d9c8ef6aa2a10d19ca687fd9b"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.3.1/YandexMobileAdsInstream.xcframework.zip",
            checksum: "233b3be888964ccc57863a18fb84e71b28e45beb84f95274ea95cf97c3304b05"
        ),
    ]
)
