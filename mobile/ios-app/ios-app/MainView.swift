import SwiftUI

struct MainView: View {
    
    @State private var showingProfile = false

    var body: some View {
        NavigationView {
            MovieListView()
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileView()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
