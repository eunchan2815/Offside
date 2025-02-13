//
//  CoachView.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct CoachView: View {
    let coach: Coach
    var body: some View {
        HStack {
            Circle()
                .fill(Color.init(uiColor: .systemGray3))
                .frame(width: 35, height: 35)
                .overlay {
                    Image(icon: .person)
                        .resizable()
                        .frame(width: 20, height: 20)
                }
            VStack(alignment: .leading) {
                Text(coach.name)
                    .font(.bold(14))
            }
        }
        .hLeading()
        .frame(width: 360, height: 60)
        .background(Color.white)
    }
}
