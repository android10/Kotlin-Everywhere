import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
           MovieListView()
             .tabItem { Label("Home", systemImage: "house") }
           ProfileView()
             .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

