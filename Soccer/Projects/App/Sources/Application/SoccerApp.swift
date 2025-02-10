import SwiftUI

@main
struct SoccerApp: App {
    @State private var isActive = false
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if isActive {
                    RootView()
                } else {
                    FirstView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
