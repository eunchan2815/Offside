//
//  RunningLeagueView.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI
import Kingfisher
import Shimmer

struct RunningLeagueView: View {
    let runningLeague: RunningCompetition
    var body: some View {
        HStack {
            if let emblem = runningLeague.emblem {
                let url = URL(string: emblem)
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
            }
            
            VStack(alignment: .leading) {
                Text(runningLeague.name)
                    .font(.bold(14))
            }
        }
        .hLeading()
        .frame(width: 360, height: 60)
        .background(Color.white)
    }
}
