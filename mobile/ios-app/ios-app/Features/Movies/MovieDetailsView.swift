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
                .overlay(PlayButtonOverlay(clickAction: { playVideo() }), alignment: .center)
            MovieSection(title: "Summary", content: movieDetailsModel.movieDetails.summary)
            MovieSection(title: "Cast", content: movieDetailsModel.movieDetails.cast)
            MovieSection(title: "Director", content: movieDetailsModel.movieDetails.director)
            MovieSection(title: "Year", content: String(movieDetailsModel.movieDetails.year))
        }
        .listStyle(.insetGrouped)
        .navigationBarTitle(movieDetailsModel.movieDetails.title)
        .onAppear { loadContent() }
        .refreshable { loadContent() }
    }
    
    struct MovieSection: View {
        
        let title: String
        let content: String
        
        var body: some View {
            Section(header: Text(title)) {
                Text(content).contentStyle()
            }
            .headerProminence(.increased)
        }
    }

    struct PlayButtonOverlay: View {

        let clickAction: () -> Void
        
        var body: some View {
            ZStack {
                Button {
                    clickAction()
                } label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(CornerRadius.medium)
                        .tint(.red)
                }
            }
            .background(Color.black)
            .frame(width: 50, height: 50)
            .opacity(0.6)
            .cornerRadius(CornerRadius.medium)
            .padding(Padding.medium)
        }
    }
    
    private func loadContent() {
        movieDetailsModel.fetch(movieId: movie.id)
    }
    
    private func playVideo() {
        movieDetailsModel.playVideo(application: UIApplication.shared)
    }
}
