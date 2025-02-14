//
//  ManyGoalPlayer.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI
import Kingfisher

struct ManyGoalPlayer: View {
    let manyGoalPlayer: Scorer
    let rank: Int
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 5)
                .foregroundStyle(.white)
                .shadow(radius: 1)
                .frame(width: 360, height: 48)
                .overlay {
                    HStack {
                        Text("\(rank)")
                            .font(.bold(16))

                        if let cleanUrl = manyGoalPlayer.team?.crest {
                            let url = URL(string: cleanUrl)
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
                        }
                        
                        Text(manyGoalPlayer.player!.lastName)
                            .font(.regular(13))

                        Text(manyGoalPlayer.team!.shortName)
                            .font(.regular(12))
                            .hLeading()
                        
                        HStack(spacing: 14) {
                            Text("\(manyGoalPlayer.playedMatches)")
                                .frame(width: 30)
                            Text("\(manyGoalPlayer.goals)")
                                .frame(width: 30)
                            Text("\(manyGoalPlayer.assists ?? 0)")
                                .frame(width: 30)
                        }
                        .foregroundStyle(.black)
                        .font(.medium(14))
                        .padding(.leading, 30)
                    }
                    .padding(.leading, 20)
                }
        }
    }
}
