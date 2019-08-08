//
//  TableViewCell + Enums.swift
//  Movie App
//
//  Created by Sherif on 8/8/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit
extension UITableViewCell {
    
    enum DetailsType {
        case movieTitle
        case movieImdbID
        case movieType
        case movieYear
    }
    
    func recieveMovieDetails(type : DetailsType , text : String?){
        switch type {
            
        case .movieTitle:
            textLabel?.text = "Movie Title : \(text ?? "")"
        case .movieImdbID:
            textLabel?.text = "Movie imdbID : \(text ?? "")"
        case .movieType:
            textLabel?.text = "Movie Type : \(text ?? "")"
        case .movieYear:
            textLabel?.text = "Movie Year : \(text ?? "")"
            
        }
    }
    
}
