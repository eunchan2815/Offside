//
//  StandingHeader.swift
//  Soccer
//
//  Created by dgsw30 on 2/12/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI
import Kingfisher
import Shimmer

struct StandingHeader: View {
    @ObservedObject var leagueInfo: StandingViewModel
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: 170)
                .ignoresSafeArea(edges: .top)
                .overlay {
                    HStack {
                        let url = URL(string: leagueInfo.competition!.emblem)!
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
                        VStack(alignment: .leading) {
                            Text("\(leagueInfo.filters!.season)-\(leagueInfo.filters!.clearSeason)")
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
