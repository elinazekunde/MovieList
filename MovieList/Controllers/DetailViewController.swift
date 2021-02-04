//
//  DetailViewController.swift
//  MovieList
//
//  Created by Elīna Zekunde on 03/02/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDirectorLabel: UILabel!
    @IBOutlet weak var movieStarsLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if movie != nil {
            movieImageView.image = UIImage(named: movie.cover)
            movieNameLabel.text = movie.movie
            movieNameLabel.numberOfLines = 0
            movieDirectorLabel.text = movie.director
            movieDirectorLabel.numberOfLines = 3
            movieStarsLabel.text = movie.stars
            movieStarsLabel.numberOfLines = 3
        }
    }
}
