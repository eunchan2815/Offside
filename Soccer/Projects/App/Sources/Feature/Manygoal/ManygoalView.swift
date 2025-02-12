//
//  ManyGoalView.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct ManygoalView: View {
    var body: some View {
        VStack {
            ScrollView {
                Text("득점왕 TOP 10")
                    .font(.bold(20))
                    .hLeading()
            }
            Spacer()
        }
    }
}

#Preview {
    ManygoalView()
}
