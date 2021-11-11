//
//  View+Extensions.swift
//  ios-app
//
//  Created by Fernando Cejas on 08.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

extension View {
    
    func headerStyle() -> some View {
        modifier(Header())
    }
    
    func titleStyle() -> some View {
        modifier(Title())
    }
    
    func contentStyle() -> some View {
        modifier(TextContent())
    }
    
    /// Prefixes the view with an icon.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .prefixedWithIcon("person.crop.square.fill")
    ///
    func prefixedWithIcon(named name: String) -> some View {
        HStack {
            Image(systemName: name)
            self
        }
    }
    
    /// Hide or show the view based on a boolean value.
    ///
    /// Example for visibility:
    ///
    ///     Text("Label")
    ///         .isHidden(true)
    ///
    /// Example for complete removal:
    ///
    ///     Text("Label")
    ///         .isHidden(true, remove: true)
    ///
    /// - Parameters:
    ///   - hidden: Set to `false` to show the view. Set to `true` to hide the view.
    ///   - remove: Boolean value indicating whether or not to remove the view.
    ///
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
