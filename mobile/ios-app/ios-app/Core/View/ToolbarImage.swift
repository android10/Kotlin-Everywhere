//
//  ToolbarItem.swift
//  ios-app
//
//  Created by Fernando Cejas on 09.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct ToolbarImage: View {
    
    var imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .font(.title)
            .foregroundColor(.primary)
    }
}
