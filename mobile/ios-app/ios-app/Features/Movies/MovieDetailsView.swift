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
        List {
            AsyncImageView(imageUrl: movieDetailsModel.movieDetails.poster)
                .opacity(0.7)
                .overlay(PlayButtonOverlay(action: { movieDetailsModel.playVideo(application: UIApplication.shared) }), alignment: .center)
                
            MovieSection(title: "Summary", content: movieDetailsModel.movieDetails.summary)
            MovieSection(title: "Cast", content: movieDetailsModel.movieDetails.cast)
            MovieSection(title: "Director", content: movieDetailsModel.movieDetails.director)
            MovieSection(title: "Year", content: String(movieDetailsModel.movieDetails.year))
        }
        .frame(width: .infinity)
        .listStyle(.insetGrouped)
        .navigationBarTitle(movieDetailsModel.movieDetails.title)
        .onAppear(perform: { movieDetailsModel.fetch(movieId: movie.id) })
    }
    
    struct MovieSection: View {
        
        let title: String
        let content: String
        
        var body: some View {
            Section(header: Text(title)) {
                Text(content)
                    .lineLimit(nil)
                    .frame(maxHeight: .infinity)
            }
            .headerProminence(.increased)
        }
    }

    struct PlayButtonOverlay: View {

        let action: () -> Void
        
        var body: some View {
            ZStack {
                Button {
                    action()
                } label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .tint(.red)
                }
            }
            .background(Color.black)
            .frame(width: 50, height: 50)
            .opacity(0.6)
            .cornerRadius(8)
            .padding(6)
        }
    }
}
