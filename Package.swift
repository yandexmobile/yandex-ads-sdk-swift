// swift-tools-version:5.7
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
        .package(url: "https://github.com/divkit/divkit-ios", exact: "13.0.0"),
    ],
    targets: [
        .target(
            name: "YandexMobileAdsTarget",
            dependencies: [
                .target(name: "YandexMobileAds"),
                .target(name: "YandexMobileAdsInstream"),
                .product(name: "YandexMobileMetrica", package: "metrica-sdk-ios"),
                .product(name: "DivKit", package: "divkit-ios"),
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
                .linkedFramework("Network"),
            ]
        ),
        .binaryTarget(
            name: "YandexMobileAds",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.5.0/YandexMobileAds.xcframework.zip",
            checksum: "c744fe19bd4ad2d86061d0f5623a6ad7a568f1fe4b696e2f1db16a560f18efe8"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.5.0/YandexMobileAdsInstream.xcframework.zip",
            checksum: "e11fd03106dcc4ed1a4b79fb447e073c1c9e383a43216cf8bee1b1da51afe1a8"
        ),
    ]
)
