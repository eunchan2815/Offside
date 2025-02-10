//
//  Iconify.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

enum Iconography: String {
    case logo = "Logo"
    case ball = "SoccerBall"
    case explain = "SubTitle"
    case background = "Background"
}

extension Image {
    init(icon: Iconography) {
        self = Image(icon.rawValue)
    }
}

