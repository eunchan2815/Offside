//
//  ManyGoalView.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct ManygoalView: View {
    @StateObject private var manyGoalVM = ManyGoalViewModel()
    let league: String
    var body: some View {
        VStack {
            if manyGoalVM.isLoading {
                ProgressView("정보를 가져오는 중입니다.")
                    .font(.bold(20))
            } else {
                VStack {
                    ManyGoalHeader(leagueInfo: manyGoalVM)
                        .padding(.top, 40)
                    ScrollView {
                        ForEach(Array(manyGoalVM.scorer.enumerated()), id: \.element) { index, manyGoalPlayer in
                            ManyGoalPlayer(manyGoalPlayer: manyGoalPlayer, rank: index + 1)
                        }
                        .padding()
                    }
                }
                .ignoresSafeArea(edges: .top)
            }
        }
        .BackButton()
        .onAppear {
            manyGoalVM.fetchManyGoalData(league)
        }
    }
}
