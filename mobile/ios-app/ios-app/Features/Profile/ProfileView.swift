//
//  ProfileView.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation
import SwiftUI
import shared

struct ProfileView: View {
    
    @ObservedObject private var profileModel = ProfileModel(getProfile: GetProfile())
    
    var body: some View {
        Form {
            Section { TextField("Name", text: $profileModel.name) }
            Section { TextField("Email", text: $profileModel.email) }

            .onAppear(perform: { profileModel.fetch() })
        }
    }
}
