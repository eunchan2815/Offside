//
//  TeamInfoView.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct TeamInfoView: View {
    @StateObject private var teamInfoVM = TeamInfoViewModel()
    let teamId: Int
    
    init(teamId: Int) {
        self.teamId = teamId
    }
    var body: some View {
        VStack {
            if teamInfoVM.isLoading {
                ProgressView("정보를 가져오는 중입니다.")
                    .font(.bold(20))
            } else {
                TeamHeader(viewModel: teamInfoVM)
                ScrollViews(viewmodel: teamInfoVM)
                    .ignoresSafeArea()
            }
        }
        .BackButton()
        .onAppear {
            teamInfoVM.fetchTeamInfo("\(teamId)")
        }
    }
}

#Preview {
    TeamInfoView(teamId: 65)
}
