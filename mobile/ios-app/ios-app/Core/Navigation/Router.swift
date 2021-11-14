//
//  Router.swift
//  ios-app
//
//  Created by Fernando Cejas on 12.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct Router {
    
    static let shared = Router()
    
    let profile = ProfileRouter()
    let movies = MoviesRouter()
    
    private init(){}
}
