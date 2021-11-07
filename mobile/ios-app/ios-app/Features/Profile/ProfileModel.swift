//
//  ProfileModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 03.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation
import shared

class ProfileModel: ObservableObject {
    
    @Published var name = String.empty
    @Published var email = String.empty
//
//    @Published var data = String.empty
//    @Published var error = String.empty
    
    private let getProfile: GetProfile
    init(getProfile: GetProfile) {
        self.getProfile = getProfile
    }
    
    func fetch() {
//        getProfile.run(params: UseCaseNone(), completionHandler: { user,_ in
//            self.name = user?.b?.capitalized ?? "TODO: Default Value"
//        })
        self.name = "Fernando Cejas"
        self.email = "fcejas@gmail.com"
    }
    
    func didChanged() {
        print("TODO: Save profile")
    }
}