//
//  Title.swift
//  ios-app
//
//  Created by Fernando Cejas on 10.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct Header: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.secondary)
    }
}

struct Title: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title.weight(.black))
            .foregroundColor(.primary)
            .lineLimit(3)
    }
}

struct TextContent: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .lineLimit(nil)
            .frame(maxHeight: .infinity)
    }
}
