//
//  Failure.swift
//  ios-app
//
//  Created by Fernando Cejas on 11.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation

struct Failure: Identifiable {

    let id = UUID()
    public let title: String
    public let description: String
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    public static func empty() -> Failure {
        Failure(title: String.empty, description: String.empty)
    }
    
    public func isEmpty() -> Bool {
        (title.isEmpty && description.isEmpty)
    }
}
