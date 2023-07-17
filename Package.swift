// swift-tools-version: 5.7; 
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMobileAdsPackage",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "YandexMobileAdsPackage",
            targets: ["YandexMobileAdsTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/divkit/divkit-ios", from: "24.2.0"),
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
            url: "https://ads-mobile-sdk.s3.yandex.net/YandexMobileAds/5.9.0/spm/0e885609-0a03-4fbf-846d-f38101fcb283.zip",
            checksum: "c9a0f3216019c1f6fb6c30bf8bd271a08d8cd3d93808a65d56039897dee0821e"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://ads-mobile-sdk.s3.yandex.net/YandexMobileAdsInstream/0.19.0/spm/c6558437-ddd3-47bf-b7d7-5d544ae89395.zip",
            checksum: "9d1af1bf16140643a583bf42a37f4cd143016290f6e0494c9981b56d80670150"
        )
    ]
)
