//
//  HeaderView.swift
//  Soccer
//
//  Created by dgsw30 on 2/11/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image(icon: .logo)
                    .resizable()
                    .frame(width: 95, height: 42)
                
                Spacer()
                
                Button {} label: {
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.black)
                }
                
                .padding()
                
                Button {} label: {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.black)
                }
            }
            .padding()
        }
    }
}

#Preview {
    HeaderView()
}
