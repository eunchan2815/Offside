import SwiftUI

public struct TabView<Content: View>: View {
    @Binding var selection: TabItem
    let content: Content
    var barOpacity: CGFloat = 1.0
    
    public init(
        selection: Binding<TabItem>,
        @ViewBuilder content: () -> Content
    ) {
        self._selection = selection
        self.content = content()
    }
    
    
    public var body: some View {
        VStack(spacing: 0) {
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(edges: .top)
            
            if barOpacity > 0 {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .foregroundStyle(Color.init(uiColor: .systemGray6))
                VStack {
                    HStack(spacing: 80) {
                        ForEach(TabItem.allCases, id: \.rawValue) { item in
                            TabbarItem(item: item, isSelected: item == selection) {
                                selection = item
                            }
                        }
                    }
                    .padding(.horizontal, 60)
                }
                .frame(width: 393, height: 62)
                .foregroundStyle(Color.white)
                .padding(.bottom, 20)
                .padding(.top, 0)
                .ignoresSafeArea(edges: .bottom)
                .opacity(barOpacity)
            }  
        }
        .ignoresSafeArea(.all)
    }
}
