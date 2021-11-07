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
                    MovieView(imageUrl: movie.poster)
                }
            }
        }
        .navigationTitle("Movies")
        .onAppear(perform: { movieListModel.fetch() })
    }
}

struct MovieView: View {
    
    var imageUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(maxWidth: 280, maxHeight: 280)
                case .failure:
                    Image(systemName: "photo")
                @unknown default:
                    EmptyView()
            }
        }
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
