import SwiftUI
import shared

struct MainView: View {
    
    var body: some View {
        MainMenu()
	}
}

struct MainMenu: View {
    
    var body: some View {
        TabView {
           Text("The content of the first view")
             .tabItem {
                Label("Home", systemImage: "house")
                Text("First Tab")
              }
           Text("The content of the second view")
             .tabItem {
                Label("Profile", systemImage: "person")
                Text("Second Tab")
              }
        }
    }
}

