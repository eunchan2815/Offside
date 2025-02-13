//
//  StandingView.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct StandingView: View {
    @StateObject private var standingVM = StandingViewModel()
    let league: String
    
    var body: some View {
        VStack {
            if standingVM.isLoading {
                ProgressView("정보를 가져오는 중입니다.")
                    .font(.bold(20))
            } else {
                VStack {
                    StandingHeader(leagueInfo: standingVM)
                        .padding(.top, 40)
                    ScrollView {
                        VStack {
                            LeaderboardView()
                            ForEach(standingVM.leagueLank, id: \.self) { team in
                                StandingComponentView(leagueName: league, leagueInfo: team)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                        .padding(.horizontal, 16)
                        .padding(.top, 4)
                        
                        HStack {
                            LeagueTable(leagueName: league)
                                .hLeading()
                        }
                        .padding(.leading)
                    }
                }
                .ignoresSafeArea(edges: .top)
            }
        }
        .BackButton()
        .onAppear {
            standingVM.getLeagueLank(league)
            standingVM.leagueLank.removeAll()
        }
        .refreshable {
            standingVM.leagueLank.removeAll()
            standingVM.getLeagueLank(league)
        }
    }
}

#Preview {
    StandingView(league: "PL")
}
