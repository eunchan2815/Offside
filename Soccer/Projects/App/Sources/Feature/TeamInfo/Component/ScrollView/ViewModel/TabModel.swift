//
//  TabModel.swift
//  TabView
//
//  Created by dgsw30 on 1/23/25.
//

import Foundation

struct TabModel: Identifiable {
    private(set) var id: Tab
    var size: CGSize = .zero
    var minX: CGFloat = .zero
    
    enum Tab: String, CaseIterable {
        case lank = "순위"
        case league = "리그"
        case web = "웹"
        case recent = "최근"
        case squad = "스쿼드"
    }
}
