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
    
    private var gridLayout: [GridItem] =
        Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridLayout) {
                ForEach(movieListModel.movies) { movie in
                    NavigationLink(
                        destination: MovieDetailsView(movie: movie),
                        label: { AsyncImageView(imageUrl: movie.poster) }
                    )
                }
            }
        }
        .navigationTitle("Movies")
        .onAppear { loadContent() }
        .refreshable { loadContent() }
    }
    
    private func loadContent() {
        movieListModel.fetch()
    }
}
