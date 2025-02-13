//
//  LeagueView.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct LeagueView: View {
    @EnvironmentObject var viewmodel: TeamInfoViewModel
    var body: some View {
        ScrollView {
            VStack {
                OverlayHeader(position: .running)
                ForEach(viewmodel.runningLeague, id: \.self) { runningLeague in
                    RunningLeagueView(runningLeague: runningLeague)
                }
            }
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 1)
            .padding(.horizontal, 16)
            .padding(.top, 2)
            .padding(.bottom, 25)
        }
    }
}

#Preview {
    LeagueView()
}
