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
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: 360, height: 48)
            .foregroundStyle(.white)
            .overlay {
                HStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(getQualificationType(position: leagueInfo.position, leagueName).color)
                        .frame(width: 5, height: 48)
                        .padding(.trailing, 10)
                    
                    Text("\(leagueInfo.position)")
                        .font(.bold(14))
                        .padding(.trailing, 12)
                    
                    let url = URL(string: leagueInfo.team.crest)!
                    KFImage(url)
                        .placeholder {
                            Rectangle()
                                .foregroundStyle(.gray)
                                .frame(width: 35, height: 35)
                                .redacted(reason: .placeholder)
                                .shimmering(gradient: Gradient(colors: [.gray, .clear]))
                        }
                        .resizable()
                        .frame(width: 35, height: 35)
                    
                    Text(leagueInfo.team.shortName)
                        .font(.regular(13))
                        .hLeading()
                    
                    HStack(spacing: 14) {
                        Text("\(leagueInfo.playedGames)")
                            .frame(width: 30)
                        Text("\(leagueInfo.goalDifference)")
                            .frame(width: 30)
                        Text("\(leagueInfo.points)")
                            .frame(width: 30)
                    }
                    .font(.medium(14))
                    .padding(.leading, 10)
                    .padding()
                }
            }
    }
}
