//
//  WebView.swift
//  Soccer
//
//  Created by dgsw30 on 2/13/25.
//  Copyright © 2025 com.eunchans. All rights reserved.
//

import SwiftUI

struct WebView: View {
    @EnvironmentObject var viewmodel: TeamInfoViewModel
    var body: some View {
        VStack {
            if let website = viewmodel.teamInfo?.website {
                SafariWebView(siteURL: website)
            } else {
                Text("정보가 없어요!")
                    .font(.bold(20))
            };
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    WebView()
}
