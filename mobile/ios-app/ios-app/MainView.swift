import Foundation
import SwiftUI

struct MainView: View {
    
    @Environment(\.router) var router: Router
    
    @State private var showingProfile = false

    var body: some View {
        NavigationView {
            MovieListView()
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    ToolbarImage(imageName: "person")
                }
            }
            .sheet(isPresented: $showingProfile) {
                router.profile.openProfile()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
