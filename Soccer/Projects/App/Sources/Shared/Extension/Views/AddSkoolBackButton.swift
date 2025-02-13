import SwiftUI

struct AddBackButton: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left")
                                .font(.regular(20))
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
    }
}

extension View {
    func BackButton(
    ) -> some View {
        self.modifier(AddBackButton())
    }
}
