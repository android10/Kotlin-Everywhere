import SwiftUI
import shared

struct ContentView: View {
    
    @ObservedObject private var profileModel = ProfileModel(getProfile: GetProfile())
    
    var body: some View {
        return Form {
            Section { TextField("Name", text: $profileModel.name) }
            Section { TextField("Email", text: $profileModel.email) }

            .onAppear(perform: { profileModel.fetch() })
        }
	}
}
