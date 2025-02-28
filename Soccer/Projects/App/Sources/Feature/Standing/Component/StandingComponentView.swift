//
//  StandingComponentView.swift
//  Soccer
//
//  Created by dgsw30 on 2/12/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI
import Kingfisher

struct StandingComponentView: View {
    let leagueName: String
    let leagueInfo: Table
    
    init(leagueName: String, leagueInfo: Table) {
        self.leagueName = leagueName
        self.leagueInfo = leagueInfo
    }
    
    var body: some View {
        NavigationLink {
            TeamInfoView(teamId: leagueInfo.team.id)
        } label: {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 360, height: 48)
                .foregroundStyle(.white)
                .overlay {
                    HStack {
                        Rectangle()
                            .fill(getQualificationType(position: leagueInfo.position, leagueName).color)
                            .frame(width: 5, height: 48)
                            .padding(.trailing, 10)
                            .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                        
                        Text("\(leagueInfo.position)")
                            .foregroundStyle(.black)
                            .font(.bold(12))
                            .padding(.trailing, 12)
                        
                        let url = URL(string: leagueInfo.team.crest)!
                        KFImage(url)
                            .placeholder {
                                Rectangle()
                                    .foregroundStyle(.gray)
                                    .frame(width: 25, height: 25)
                                    .redacted(reason: .placeholder)
                                    .shimmering(gradient: Gradient(colors: [.gray, .clear]))
                            }
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Text(leagueInfo.team.shortName)
                            .foregroundStyle(.black)
                            .font(.regular(11))
                            .hLeading()
                        
                        HStack(spacing: 14) {
                            Text("\(leagueInfo.playedGames)")
                                .frame(width: 30)
                            Text("\(leagueInfo.goalDifference)")
                                .frame(width: 30)
                            Text("\(leagueInfo.points)")
                                .frame(width: 30)
                        }
                        .foregroundStyle(.black)
                        .font(.medium(12))
                        .padding(.leading, 10)
                        .padding()
                    }
                }
        }
    }
}
