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
            Movie(id: 038001, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038001.jpg"),
            Movie(id: 038002, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038002.jpg"),
            Movie(id: 038003, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038003.jpg"),
            Movie(id: 038004, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038004.jpg"),
            Movie(id: 038005, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038005.jpg"),
            Movie(id: 038006, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038006.jpg"),
            Movie(id: 038007, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038007.jpg"),
            Movie(id: 038008, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038008.jpg"),
            Movie(id: 038009, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038009.jpg"),
            Movie(id: 038010, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038010.jpg"),
            Movie(id: 038011, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038011.jpg"),
            Movie(id: 038012, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038012.jpg"),
            Movie(id: 038013, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038013.jpg"),
            Movie(id: 038014, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038014.jpg"),
            Movie(id: 038015, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038015.jpg"),
            Movie(id: 038016, poster: "https://raw.githubusercontent.com/android10/Sample-Data/master/Android-CleanArchitecture-Kotlin/posters/038016.jpg"),
        ]
    }
}
