//
//  MovieListView.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    
    @Environment(\.router) var router: Router
    
    @State var gridLayout: [GridItem] = [ GridItem() ]
    @State var onlyImage = false
    
    @ObservedObject private var movieListModel = MovieListModel()
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: gridLayout) {
                ForEach(movieListModel.movies) { movie in
                    NavigationLink(
                        destination: MovieDetailsView(movie: movie),
                        label: { CardView(imageUrl: movie.poster,
                                          header: String(movie.year),
                                          title: movie.title,
                                          onlyImage: $onlyImage) }
                    )
                }
            }
        }
        .animation(.interactiveSpring(), value: gridLayout.count)
        .navigationTitle("Movies")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 2 + 1)
                    self.onlyImage.toggle()
                }) {
                    ToolbarImage(imageName: "square.grid.2x2")
                }
            }
        }
        .onAppear { loadContent() }
        .refreshable { loadContent() }
        .onFailure(viewModel: $movieListModel) { loadContent() }
    }
    
    private func loadContent() {
        movieListModel.fetch()
    }
}
