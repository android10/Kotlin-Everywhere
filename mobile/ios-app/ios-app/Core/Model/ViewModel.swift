//
//  ViewModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation

protocol ViewModel: ObservableObject {
    func fetch()
}
