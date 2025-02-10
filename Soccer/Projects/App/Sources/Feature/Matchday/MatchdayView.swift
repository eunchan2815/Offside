//
//  MatchdayVie.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct MatchdayView: View {
    var body: some View {
        VStack {
            HeaderView()
            ScrollView {
                Text("경기일정")
                    .font(.bold(20))
                    .hLeading()
                
            }
            Spacer()
        }
    }
}

#Preview {
    MatchdayView()
}
