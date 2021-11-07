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
    
    var columns: [GridItem] =
      Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                ForEach(movieListModel.movies) { movie in
                    NavigationLink(
                        destination: MovieDetailsView(movie: movie),
                        label: { AsyncImageView(imageUrl: movie.poster) }
                    )
                }
            }
        }
//        .background(Color.black)
        .navigationTitle("Movies")
        .onAppear(perform: { movieListModel.fetch() })
    }
}
