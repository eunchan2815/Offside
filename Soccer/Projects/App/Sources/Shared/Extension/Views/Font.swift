import SwiftUI

enum FontWeight: String {
    case bold = "Pretendard-Bold"
    case light = "Pretendard-Light"
    case medium = "Pretendard-Medium"
    case regular = "Pretendard-Regular"
}

extension Font {
    private static func pretendard(weight: FontWeight, size: CGFloat) -> Self {
        Font.custom(weight.rawValue, size: size)
    }
    
    static func bold(_ size: CGFloat) -> Self {
        pretendard(weight: .bold, size: size)
    }
    
    static func light(_ size: CGFloat) -> Self {
        pretendard(weight: .light, size: size)
    }
    
    static func medium(_ size: CGFloat) -> Self {
        pretendard(weight: .medium, size: size)
    }
    
    static func regular(_ size: CGFloat) -> Self {
        pretendard(weight: .regular, size: size)
    }
}
