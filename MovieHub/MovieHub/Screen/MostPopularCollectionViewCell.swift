//
//  MostPopularCollectionViewCell.swift
//  MovieHub
//
//  Created by Van Linh Nguyen on 8/29/21.
//

import UIKit

class MostPopularCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var rating: UILabel!
    
    func bind(movie: Movie) {
        print("init cell")
        
        title.text = movie.title
        rating.text = "\(movie.imDbRating)/10"
    }
}
