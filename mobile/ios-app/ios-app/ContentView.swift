import SwiftUI
import shared

struct ContentView: View {
    
    let greet = Greeting().greeting()
    
    var body: some View {
        let text = Text(greet)
        loadUsers(textView: text)
		return text
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

func loadUsers(textView: Text) {
    let api = RestApi()
    
    api.usersList(success: { users in
//        textView.bold() = users[1].name
        textView.italic()
    }, failure: { error in
        print(error?.description() ?? "")
    })
}
