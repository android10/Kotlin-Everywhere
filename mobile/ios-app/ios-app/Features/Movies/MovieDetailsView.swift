//
//  MovieDetailsView.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    
    @ObservedObject private var movieDetailsModel = MovieDetailsModel()
    
    var body: some View {
        NavigationView {
            Section(header: Text("Summary")) { Text(movieDetailsModel.movieDetails.summary) }
            .navigationBarTitle("Movie Details", displayMode: .inline)
            .onAppear(perform: { movieDetailsModel.fetch() })
        }
    }
}
