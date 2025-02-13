//
//  SqaudEnum.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import Foundation

enum SqaudEnum: String {
    case player
    case coach
    case running
    
    var position: String {
        switch self {
        case .player:
            return "선수"
        case .coach:
            return "감독"
        case .running:
            return "현재 진행중인 리그"
        }
    }
}
