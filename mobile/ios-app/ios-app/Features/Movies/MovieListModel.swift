//
//  MovieListModel.swift
//  ios-app
//
//  Created by Fernando Cejas on 05.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import Foundation

class MovieListModel: ObservableObject {
    
    @Published var movies: [Movie] = []
    
    func fetch() {
        movies = [
            Movie(id: 1, poster: "Ironman"),
            Movie(id: 2, poster: "Batman"),
            Movie(id: 3, poster: "Tor"),
            Movie(id: 4, poster: "Hulk"),
            Movie(id: 5, poster: "Captain America"),
            Movie(id: 6, poster: "Superman"),
            Movie(id: 7, poster: "Wonder Woman"),
            Movie(id: 8, poster: "Captain Marvel"),
            Movie(id: 9, poster: "Acquaman"),
            Movie(id: 10, poster: "Black Panther"),
            Movie(id: 11, poster: "Spiderman"),
            Movie(id: 12, poster: "Venon"),
            Movie(id: 13, poster: "Black Widow"),
            Movie(id: 14, poster: "Doctor Strange"),
            Movie(id: 15, poster: "Super Girl"),
        ]
    }
}
