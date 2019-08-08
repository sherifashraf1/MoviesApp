//
//  MoviePosterCell.swift
//  Movie App
//
//  Created by Sherif on 8/8/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class MoviePosterCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
