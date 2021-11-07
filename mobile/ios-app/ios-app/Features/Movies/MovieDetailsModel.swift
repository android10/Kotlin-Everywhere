//
//  MovieDetailsModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation
import UIKit

class MovieDetailsModel: ObservableObject {
    
    @Published var movieDetails: MovieDetails = MovieDetails()
    
    func fetch(movieId: Int) {
        movieDetails = MovieDetails(
            id: 1,
            title: "300 Rise of an Empire",
            poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038001.jpg",
            summary: "After its victory over Leonidas' 300, the Persian Army under the command of Xerxes marches towards the major Greek city-states. The Democratic city of Athens, first on the path of Xerxes' army, bases its strength on its fleet, led by admiral Themistocles. Themistocles is forced to an unwilling alliance with the traditional rival of Athens, oligarchic Sparta whose might lies with its superior infantry troops. But Xerxes still reigns supreme in numbers over sea and land.",
            cast: "Sullivan Stapleton, Eva Green, Lena Headey",
            director:  "Noam Murro",
            year: 2014,
            trailer: "https://www.youtube.com/watch?v=2zqy21Z29ps"
        )
    }
    
    func playVideo(application: UIApplication) {
        if let url = URL(string: movieDetails.trailer) {
            application.open(url)
        }
    }
}
