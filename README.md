# Yandex Advertising Network Mobile

## Documentation
Documentation could be found at the [official website][DOCUMENTATION]

## License
EULA is available at [EULA website][LICENSE] 

## Installation
1. Add package to your project

2. Add `-ObjC` to OTHER_LDFLAGS

3. Ensure that your target is linked binary with YandexMobileAdsPackge (Your target -> Build Phases -> Link Binary With Libraries)

4. Add YandexMobileAdsBundle.bundle from YandexMobileAds (Package Dependencies -> YandexMobileAdsPackage -> Referenced Binaries -> YandexMobileAds) to Copy Bundle Resource phase (Your target -> Build Phases -> Copy Bundle Resource)

[DOCUMENTATION]: https://tech.yandex.ru/mobile-ads/
[LICENSE]: https://yandex.com/legal/mobileads_sdk_agreement/