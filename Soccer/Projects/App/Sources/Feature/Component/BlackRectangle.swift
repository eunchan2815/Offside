//
//  BlackRectangle.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct BlackRectangle: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: .infinity, height: 170)
        }
        .ignoresSafeArea()
        Spacer()
    }
}

#Preview {
    BlackRectangle()
}
