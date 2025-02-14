//
//  LeagueListView 2.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//


import SwiftUI
import Kingfisher
import Shimmer

struct LeagueListViewCell: View {
    let leagueInfo: CompetitionInfo
    
    var body: some View {
        NavigationLink {
            ManygoalView(league: leagueInfo.code)
        } label: {
            HStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundStyle(.white)
                    .shadow(radius: 1)
                    .frame(width: 360, height: 48)
                    .overlay {
                        HStack {
                            let url = URL(string: leagueInfo.emblem)!
                            KFImage(url)
                                .placeholder {
                                    Rectangle()
                                        .foregroundStyle(.gray)
                                        .frame(width: 30, height: 30)
                                        .redacted(reason: .placeholder)
                                        .shimmering(gradient: Gradient(colors: [.gray, .clear]))
                                }
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(leagueInfo.name)
                                .foregroundStyle(.black)
                                .font(.regular(14))
                                .hLeading()
                        }
                        .padding()
                    }
            }
        }
    }
}
