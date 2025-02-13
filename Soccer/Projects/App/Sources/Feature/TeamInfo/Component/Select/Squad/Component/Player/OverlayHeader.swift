//
//  PlayerHeader.swift
//  Soccer
//
//  Created by dgsw30 on 2/14/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct OverlayHeader: View {
    @State var position: SqaudEnum
    var body: some View {
        HStack {
            Text(position.position)
                .font(.bold(16))
        }
        .hLeading()
        .frame(width: 360, height: 60)
        .background(Color.white)
    }
}

#Preview {
    OverlayHeader(position: .player)
}
