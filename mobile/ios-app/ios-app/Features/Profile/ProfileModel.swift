//
//  ProfileModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 03.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation

class ProfileModel: ObservableObject {
    @Published var name = String.empty
    @Published var email = String.empty
}
