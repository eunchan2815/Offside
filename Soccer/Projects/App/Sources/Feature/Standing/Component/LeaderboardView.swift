//
//  LeaderboardView.swift
//  Soccer
//
//  Created by dgsw30 on 2/12/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: 360, height: 48)
            .foregroundStyle(.white)
            .overlay {
                VStack {
                    HStack {
                        Text("#")
                            .font(.bold(14))
                            .padding(.trailing, 12)
                        
                        Text("팀")
                            .font(.regular(13))
                            .hLeading()
                        
                        HStack(spacing: 14) {
                            Text("경기")
                                .frame(width: 30)
                            Text("=")
                                .frame(width: 30)
                            Text("승점")
                                .frame(width: 30)
                        }
                        .font(.medium(14))
                        .padding(.leading, 10)
                    }
                    .padding()
                }
            }
    }
}
