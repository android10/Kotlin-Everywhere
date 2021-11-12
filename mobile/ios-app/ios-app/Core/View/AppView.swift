//
//  BaseView.swift
//  ios-app
//
//  Created by Fernando Cejas on 12.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct AppView<Content>: View where Content: View {
    
    let content: Content
    
    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body : some View {
        content
    }
    
    public func onFailure(failure: Binding<Failure?>, retryAction: @escaping () -> Void) -> some View {
        
        alert(item: failure) { failure in
            Alert(
                title: Text(failure.title),
                message: Text(failure.description),
                primaryButton: .default(Text("Ok")),
                secondaryButton: .default(Text("Retry"), action: { retryAction() })
            )
        }
    }
}
