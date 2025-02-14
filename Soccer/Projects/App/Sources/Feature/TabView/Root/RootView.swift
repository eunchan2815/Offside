//
//  TabBar.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @State private var selection: TabItem = .match
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                switch selection {
                case .match:
                    MatchdayView()
//                        .padding(.top, 40)
                case .standing:
                    LeagueInfoView()
                case .manygoals:
                    ShowingManyGoalLeague()
                }
            }
            .padding(.top)
        }
    }
}

#Preview {
    RootView()
}
