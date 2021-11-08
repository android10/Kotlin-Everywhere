//
//  View+Extensions.swift
//  ios-app
//
//  Created by Fernando Cejas on 08.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

extension View {
    func prefixedWithIcon(named name: String) -> some View {
        HStack {
            Image(systemName: name)
            self
        }
    }
}
