import SwiftUI

struct TabbarItem: View {
    let item: TabItem
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button  {
            action()
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 38, height: 38)
                .overlay {
                    VStack {
                        Image(systemName: item.image)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(isSelected ? .mainColor : Color.gray)
                        
                        Text(item.subtitle)
                            .font(.regular(12))
                            .foregroundStyle(isSelected ? .mainColor : Color.gray)
                    }
                }
        }
        .disabled(isSelected)
    }
}
