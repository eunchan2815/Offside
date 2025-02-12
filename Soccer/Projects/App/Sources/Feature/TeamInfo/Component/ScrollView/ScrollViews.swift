//
//  ScrollView.swift
//  TabView
//
//  Created by dgsw30 on 1/23/25.
//

import SwiftUI

struct ScrollViews: View {
    @State private var activeTab: TabModel.Tab = .lank
    @State private var mainScrollState: TabModel.Tab?
    @State private var tabBarScrollState: TabModel.Tab? = .lank
    @State private var progress: CGFloat = .zero
    @State private var tab: [TabModel] = [
        .init(id: TabModel.Tab.lank),
        .init(id: TabModel.Tab.league),
        .init(id: TabModel.Tab.web),
        .init(id: TabModel.Tab.recent),
        .init(id: TabModel.Tab.squad)
    ]
    var body: some View {
        VStack {
            customTabBarView()
            
            GeometryReader {
                let size = $0.size
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0) {
                        ForEach(tab) { tab in
                            switch tabBarScrollState {
                            case .lank:
                                LankView()
                            case .league:
                                LeagueView()
                            case .web:
                                WebView()
                            case .recent:
                                RecentView()
                            case .squad:
                                SquadView()
                            case .none:
                                EmptyView()
                            }
                        }
                        .frame(width: size.width, height: size.height)
                        .contentShape(.rect)
                    }
                    .scrollTargetLayout()
                    .rect { rect in
                        progress = -rect.minX / size.width
                    }
                }
                .scrollPosition(id: $mainScrollState)
                .scrollTargetBehavior(.paging)
                .onChange(of: mainScrollState) { oldValue, newValue in
                    if let newValue {
                        withAnimation(.snappy) {
                            tabBarScrollState = newValue
                            activeTab = newValue
                        }
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func customTabBarView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach($tab) { $tab in
                    Button(action: {
                        withAnimation(.snappy) {
                            activeTab = tab.id
                            tabBarScrollState = tab.id
                            mainScrollState = tab.id
                            
                        }
                    }) {
                        Text(tab.id.rawValue)
                            .font(.medium(16))
                            .padding(.vertical, 12)
                            .padding(.horizontal, 10)
                            .foregroundStyle(activeTab == tab.id ?  Color.primary : Color.gray)
                            .contentShape(.rect)
                    }
                    .buttonStyle(.plain)
                    .rect { rect in
                        tab.size = rect.size
                        tab.minX = rect.minX
                    }
                }
            }
            .scrollTargetLayout()
        }
        .scrollPosition(id: .init(get: {
            tabBarScrollState
        }, set: { _ in
            
        }), anchor: .center)
        .overlay(alignment: .bottom) {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.gray.opacity(0.3))
                    .frame(height: 1)
                
                let inputRange = tab.indices.compactMap { return CGFloat($0) }
                let outRange = tab.compactMap { return $0.size.width }
                let indicatorWidth = progress.interpolate(inputRange: inputRange, outputRange: outRange)
                let outputPostion = tab.compactMap{ return $0.minX }
                let indecatorPosition = progress.interpolate(inputRange: inputRange, outputRange: outputPostion)
                
                Rectangle()
                    .fill(.primary)
                    .frame(width: indicatorWidth, height: 1.5)
                    .offset(x: indecatorPosition)
            }
        }
        .safeAreaPadding(.horizontal, 15)
    }
}

#Preview {
    ScrollViews()
}
