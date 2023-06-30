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
            url: "https://ads-mobile-sdk.s3.yandex.net/YandexMobileAds/5.8.0/spm/14f9ef2a-c8c9-4853-8279-28e68383871b.zip",
            checksum: "e4d1e71242bbbb04c0786bafc9db263cf15d996f906eb2925c99c565148d7a63"
        ),
        .binaryTarget(
            name: "YandexMobileAdsInstream",
            url: "https://ads-mobile-sdk.s3.yandex.net/YandexMobileAdsInstream/0.18.0/spm/338d05ac-31bb-441c-857f-de5255882e88.zip",
            checksum: "efeb2d57ae4bcfd1595c05f307e4cc0ae9614ae0804ca071c3e409fa230e49e5"
        )
    ]
)
