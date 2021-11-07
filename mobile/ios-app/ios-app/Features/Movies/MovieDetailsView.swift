//
//  MovieDetailsView.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct MovieDetailsView: View {
    
    let movie: Movie
    
    @ObservedObject private var movieDetailsModel = MovieDetailsModel()
        
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                MyView(imageUrl: self.movie.poster)
                Section(header: Text("Director")) { Text(movieDetailsModel.movieDetails.director) }
                Section(header: Text("Summary")) { Text(movieDetailsModel.movieDetails.summary) }
            }
        }
        .navigationBarTitle(movieDetailsModel.movieDetails.title)
        .onAppear(perform: { movieDetailsModel.fetch(movieId: self.movie.id) })
    }
}

struct MyView: View {
    
    var imageUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                case .failure:
                    Image(systemName: "photo")
                @unknown default:
                    EmptyView()
            }
        }
        .shadow(radius: 5)
    }
}
