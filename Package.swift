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
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.4.0/YandexMobileAds.xcframework.zip",
            checksum: "74245e62b2e8b7553e004f720771417461851518db7bdb5c8d1f7ae05a1109c9"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://github.com/yandexmobile/yandex-ads-sdk-swift/releases/download/5.4.0/YandexMobileAdsInstream.xcframework.zip",
            checksum: "4bbae741e0f39ff5226cf6912635581377394e3a0de71af0bc787ec58bef029a"
        ),
    ]
)
