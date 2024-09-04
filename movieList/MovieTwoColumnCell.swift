//
//  MovieTwoColonCell.swift
//  movieList
//
//  Created by Apple Atölyesi on 4.09.2024.
//

import Foundation
import UIKit

class MovieTwoColumnCell:UICollectionViewCell {
    
    @IBOutlet weak var movieİmage: UIImageView!
    
    @IBOutlet weak var movieName: UILabel!

    @IBOutlet weak var movieYear: UILabel!
    
    func setup(movie:Movie){
        movieİmage.image = movie.image
        movieName.text = movie.title
        movieYear.text = movie.releaseDate
    }
}
