//
//  StandingHeader.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//


import SwiftUI
import Kingfisher
import Shimmer

struct ManyGoalHeader: View {
    @ObservedObject var leagueInfo: ManyGoalViewModel
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: 170)
                .ignoresSafeArea(edges: .top)
                .overlay {
                    HStack {
                        if let cleanUrl = leagueInfo.manyGoalInfo?.competition?.emblem {
                            let url = URL(string: cleanUrl)
                            KFImage(url)
                                .placeholder {
                                    Rectangle()
                                        .foregroundStyle(.gray)
                                        .frame(width: 100, height: 100)
                                        .redacted(reason: .placeholder)
                                        .shimmering(gradient: Gradient(colors: [.gray, .clear]))
                                }
                                .resizable()
                                .frame(width: 100, height: 100)
                        }
                        VStack(alignment: .leading) {
                            Text("\(leagueInfo.manyGoalInfo?.filters?.season ?? "")-\(leagueInfo.manyGoalInfo?.filters?.clearSeason ?? "")")
                            Text("Season")
                        }
                        .hLeading()
                        .font(.bold(20))
                    }
                    .padding()
                    .padding(.top, 60)
                }
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 2)
                .foregroundStyle(Color.init(uiColor: .systemGray4))
        }
    }
}
