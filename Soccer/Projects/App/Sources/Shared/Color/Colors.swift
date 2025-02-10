import SwiftUI

extension Color {
    static let mainColor = Color(hex: "#66D9FF")
    static let subColor = Color(hex: "#0389FF")

    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        
        let r, g, b: Double
        if hex.count == 6 {
            r = Double((int >> 16) & 0xFF) / 255.0
            g = Double((int >> 8) & 0xFF) / 255.0
            b = Double(int & 0xFF) / 255.0
            self.init(red: r, green: g, blue: b)
        } else {
            self.init(.gray)
        }
    }
}
