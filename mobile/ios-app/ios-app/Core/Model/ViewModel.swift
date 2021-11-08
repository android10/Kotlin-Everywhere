//
//  ViewModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var error: Error?
    
    func publishError(message: String) {
//        self.error = Error(message)
    }
}
