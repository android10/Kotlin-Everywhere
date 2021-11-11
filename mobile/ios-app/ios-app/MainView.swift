import SwiftUI

struct MainView: View {
    
    @State private var showingProfile = false
    @State var loadingContent = false

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
                ProfileView()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
