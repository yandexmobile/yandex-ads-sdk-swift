// swift-tools-version: 5.7; 
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMobileAdsPackage",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(
            name: "YandexMobileAdsPackage",
            targets: ["YandexMobileAdsTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/divkit/divkit-ios", "24.2.0"..<"25.0.0"),
        .package(url: "https://github.com/yandexmobile/metrica-sdk-ios", "4.0.0"..<"5.0.0")
    ],
    targets: [
        .target(
            name: "YandexMobileAdsTarget",
            dependencies: [
                .target(name: "YandexMobileAds"),
                .target(name: "YandexMobileAdsInstream"),
                .product(name: "DivKit", package: "divkit-ios"),
                .product(name: "YandexMobileMetrica", package: "metrica-sdk-ios")
            ],
            path: "YandexMobileAdsTarget",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AdSupport"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreImage"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreText"),
                .linkedFramework("Foundation"),
                .linkedFramework("Network"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SwiftUI"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit")
            ]
        ),
        .binaryTarget(
            name: "YandexMobileAds",
            url: "https://ads-mobile-sdk.s3.yandex.net/YandexMobileAds/6.0.0/spm/20f1e848-5f9a-4fa2-b0eb-95daaff51969.zip",
            checksum: "9b4829ab9620ed3c3cbfdffc9eda710703647379a68cd3c550251bd4518520aa"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://ads-mobile-sdk.s3.yandex.net/YandexMobileAdsInstream/0.20.0/spm/ccbdd241-11bb-40b7-be11-d68be67a5a95.zip",
            checksum: "22a61b404a025356e320a891305e0e3747b72d57fa5d8031574889a14018fa64"
        )
    ]
)
