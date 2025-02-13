//
//  QualificationType.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//


import SwiftUI

public func getQualificationType(position: Int, _ leagueName: String) -> QualificationType {
    switch leagueName {
    case "PL": // 프리미어리그
        switch position {
        case 1...4: return .championsLeague
        case 5: return .europaLeague
        case 18...20: return .relegation
        default: return .normal
        }
    case "BL1": // 분데스리가
        switch position {
        case 1...4: return .championsLeague
        case 5: return .europaLeague
        case 6: return .conferenceLeague
        case 16: return .relegationPlayoff
        case 17...18: return .relegation
        default: return .normal
        }
    case "PD", "SA": // 라리가, 세리에A
        switch position {
        case 1...4: return .championsLeague
        case 5: return .europaLeague
        case 6: return .conferenceLeague
        case 18...20: return .relegation
        default: return .normal
        }
    case "FL1": // 리그1
        switch position {
        case 1...3: return .championsLeague
        case 4: return .europaLeague
        case 5: return .conferenceLeague
        case 16...18: return .relegation // 강등권 수정
        default: return .normal
        }
    case "DED": // 에레디비시
        switch position {
        case 1: return .championsLeague
        case 2: return .championsLeague
        case 3: return .europaLeague
        case 4: return .conferenceLeague
        case 16: return .relegationPlayoff
        case 17...18: return .relegation
        default: return .normal
        }
    default:
        return .normal
    }
}
