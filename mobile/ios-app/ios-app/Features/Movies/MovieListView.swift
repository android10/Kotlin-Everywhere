//
//  MovieListView.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    
    @ObservedObject private var movieListModel = MovieListModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movieListModel.movies) { movie in
                    AsyncImage(url: URL(string: movie.poster)).frame(width: 200, height: 200)
                }
            }
            .navigationBarTitle("Movies", displayMode: .inline)
            .onAppear(perform: { movieListModel.fetch() })
        }
    }
}
