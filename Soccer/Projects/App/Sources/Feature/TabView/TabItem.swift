import SwiftUI

public enum TabItem: Int, CaseIterable {
    case match = 0, standing, manygoals
    
    var image: String {
        switch self {
        case .match:
            return "soccerball.inverse"
        case .standing:
            return "calendar"
        case .manygoals:
            return "trophy"
        }
    }
    
    var subtitle: String {
        switch self {
        case .match:
            return "일정"
        case .standing:
            return "순위"
        case .manygoals:
            return "득점왕"
        }
    }
}
