//
//  ShowingManyGoalLeague.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct ShowingManyGoalLeague: View {
    @StateObject private var leagueVM = LeagueViewModel()
    var body: some View {
        VStack {
            if leagueVM.isLoading {
                ProgressView("리그정보를 가져오는 중이에요!")
            } else {
                ScrollView {
                    VStack {
                        ForEach(leagueVM.leagueList, id: \.self) { league in
                            LeagueListViewCell(leagueInfo: league)
                        }
                    }
                    .padding(.top, 4)
                    .frame(maxWidth: .infinity)
                }
            }
        }
        .padding(.bottom)
        .navigationTitle("리그 득점왕")
        .font(.bold(20))
        .onAppear {
            leagueVM.getLeagueInfo()
        }
        .refreshable {
            leagueVM.getLeagueInfo()
        }
    }
}

#Preview {
    ShowingManyGoalLeague()
}
