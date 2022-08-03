// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMobileAdsPackage",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "YandexMobileAdsPackage", targets: ["YandexMobileAdsTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/yandexmobile/metrica-sdk-ios", "4.0.0"..<"5.0.0")
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
                .linkedLibrary("xml2")
            ]
        ),
        .binaryTarget(
            name: "YandexMobileAds",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.0.0/YandexMobileAds.xcframework.zip",
            checksum: "7d75279fe2cba6f24d476ecf4cddb84fa69a0d0ddd1789b9a5a5bc0f3f5ee6c3"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.0.0/YandexMobileAdsInstream.xcframework.zip",
            checksum: "f46d248ffd956b12a40f80e791624a7fcab9b1d06790610aa1d21b44f8bea826"
        ),
    ]
)
