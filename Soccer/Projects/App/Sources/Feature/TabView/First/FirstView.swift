//
//  FirstView.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack {
            Image(icon: .background)
            VStack {
                Image(icon: .ball)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 14)
                
                Image(icon: .logo)
                    .resizable()
                    .frame(width: 295, height: 120)
                
                Image(icon: .explain)
                    .resizable()
                    .frame(width: 253, height: 33)
            }
        }
    }
}

#Preview {
    FirstView()
}
