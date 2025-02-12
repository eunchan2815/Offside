//
//  QualificationType.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI
public enum QualificationType {
    case championsLeague
    case europaLeague
    case conferenceLeague
    case relegation
    case relegationPlayoff
    case normal
    
    var color: Color {
        switch self {
        case .championsLeague:
            return Color.green
        case .europaLeague:
            return Color.blue
        case .conferenceLeague:
            return Color.skyblue
        case .relegation:
            return Color.red
        case .relegationPlayoff:
            return Color.orange
        case .normal:
            return .white
        }
    }
}
