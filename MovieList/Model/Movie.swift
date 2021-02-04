//
//  Movie.swift
//  MovieList
//
//  Created by Elīna Zekunde on 03/02/2021.
//

import Foundation

struct Movie {
    
    let movie: String
    let cover: String
    let director: String
    let stars: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let theMovies = DataManager.shared.movie
        let covers = DataManager.shared.cover
        let directors = DataManager.shared.director
        let stars = DataManager.shared.stars
        
        for i in 0..<theMovies.count {
            let movie = Movie(movie: theMovies[i], cover: covers[i], director: directors[i], stars: stars[i])
            movies.append(movie)
        }
        return movies
    }
}
