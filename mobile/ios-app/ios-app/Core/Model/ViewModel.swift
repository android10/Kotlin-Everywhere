//
//  ViewModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation

class ViewModel : ObservableObject {
    
    @Published var failure: Failure? = nil
    
    internal func publishFailure(failure: Failure) {
        self.failure = failure
    }
    
    internal func clearFailure() {
        self.failure = nil
    }
}
