//
//  ProfileView.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI
import shared

struct ProfileView: View {
    
    @ObservedObject private var profileModel = ProfileModel(getProfile: GetProfile())
    
    @State private var editMode = false
    
    var body: some View {
        NavigationView {
            Form {
                Section { TextField("Name", text: $profileModel.profile.name) }
                Section { TextField("Email", text: $profileModel.profile.email) }
            }
            .disabled(!editMode)
            .navigationBarTitle("User Profile", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(editMode ? "Save" : "Edit") {
                        editMode.toggle()
                    }
                }
            }
            .onChange(of: editMode) { newValue in editModeChanged(to: newValue) }
            .onAppear(perform: { profileModel.fetch() })
        }
    }
    
    func editModeChanged(to value: Bool) {
        print("editMode changed to \(value)!!!")
    }
}
