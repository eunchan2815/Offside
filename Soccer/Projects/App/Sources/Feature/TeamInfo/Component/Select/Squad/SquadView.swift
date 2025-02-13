//
//  SquadView.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct SquadView: View {
    @EnvironmentObject var viewmodel: TeamInfoViewModel
    var body: some View {
        ScrollView {
            VStack {
                OverlayHeader(position: .coach)
                if let coachname = viewmodel.coach {
                    CoachView(coach: coachname)
                }
            }
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 1)
            .padding(.horizontal, 16)
            
            VStack {
                OverlayHeader(position: .player)
                ForEach(viewmodel.squad, id: \.self) { player in
                    PlayerView(player: player)
                }
                .frame(maxWidth: .infinity)
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
    SquadView()
}
