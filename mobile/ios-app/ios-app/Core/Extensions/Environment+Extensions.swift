//
//  Environment+Extensions.swift
//  ios-app
//
//  Created by Fernando Cejas on 08.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct RouterKey: EnvironmentKey {
    static var defaultValue: Router {
        Router()
    }
}

extension EnvironmentValues {
    var router: Router {
        get { return self[RouterKey.self]  }
//        set { self[RouterKey.self] = newValue }
    }
}
