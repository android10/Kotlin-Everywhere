import SwiftUI
import shared

struct ContentView: View {
    
    let greet = Greeting().greeting()
    let user: Void = GetProfile().run(params: UseCaseNone(), completionHandler: simpleCompletionHandler)
    
    var body: some View {
        let text = Text(greet)
		return text
	}
}

let simpleCompletionHandler:(EitherRight<NSString>?, Error?) -> Void = { user,error in
    
    let username = user?.b.self
    print("From The Compleation handler: \(String(describing: username))")
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
