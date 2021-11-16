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
    
    @Published var profile = Profile()
    
    private let getProfile: GetProfile
    init(getProfile: GetProfile) {
        self.getProfile = getProfile
    }
    
    func fetch() {
        self.profile = Profile(name: "Fernando Cejas", email: "fcejas@gmail.com")
    }
    
    func didChanged() {
        print("TODO: Save profile")
    }
    
    //    let something = GetProfile
    //    let user: Void = GetProfile().run(params: UseCaseNone(), completionHandler: simpleCompletionHandler)
    //
    //
//    let onCompletion: (EitherRight<UserProfile>) -> Void = { user,error in
//
//    }
    
    
//    let simpleCompletionHandler:(EitherRight<NSString>?, Error?) -> Void = { user,error in
//        let username = user?.b.self
//        print("From The Compleation handler: \(String(describing: username))")
//    }
}
