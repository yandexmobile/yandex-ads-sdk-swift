import Foundation

@objcMembers
@objc(YMASwiftBundleDictionary)
public class YMASwiftBundleDictionary: NSObject {
    public func YMAProvideBundle() -> Bundle {
        let b = Bundle.allBundles
        return Bundle.module
    }
}
