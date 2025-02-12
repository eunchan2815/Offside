//
//  TeamHeader.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI
import Kingfisher
import Shimmer

struct TeamHeader: View {
    @ObservedObject var viewModel: TeamInfoViewModel
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: 150)
                .ignoresSafeArea(edges: .top)
                .overlay {
                    HStack {
                        if let crestURL = viewModel.teamInfo?.crest, let url = URL(string: crestURL) {
                            KFImage(url)
                                .placeholder {
                                    Rectangle()
                                        .foregroundStyle(.gray)
                                        .frame(width: 65, height: 65)
                                        .redacted(reason: .placeholder)
                                        .shimmering(gradient: Gradient(colors: [.gray, .clear]))
                                }
                                .resizable()
                                .frame(width: 65, height: 65)
                        }
                        
                        VStack(alignment: .leading) {
                            Text(viewModel.teamInfo?.cleanName ?? "오류가 발생했습니다")
                                .font(.bold(20))
                            Text(viewModel.area?.name ?? "오류가 발생했습니다")
                                .font(.bold(16))
                        }
                        .hLeading()
                    }
                    .padding()
                    .padding(.top, 60)
                }
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 2)
                .foregroundStyle(Color(uiColor: .systemGray4))
        }
    }
}

