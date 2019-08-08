//
//  MovieDetailsViewController.swift
//  Movie App
//
//  Created by Sherif on 8/8/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UITableViewController {
    
    var movie : Movie?
    
    enum MovieDetailsSection : CaseIterable { 
        case moviePoster
        case movieDetails
    }
    enum MovieDetailsType : CaseIterable {
        case title
        case imdbID
        case type
        case year
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerNib(cell: MoviePosterCell.self)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    
}

extension MovieDetailsViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return MovieDetailsSection.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = MovieDetailsSection.allCases[section]
        switch section {
        case .moviePoster :
            return 1
        case .movieDetails :
            return MovieDetailsType.allCases.count
            
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = MovieDetailsSection.allCases[indexPath.section]
        switch section {
        case .moviePoster:
            let cell = tableView.dequeue() as MoviePosterCell
            cell.posterImage.image = UIImage(named: (movie?.poster!)!)
            cell.selectionStyle = .none
            return cell
            
        case .movieDetails :
            let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
            let movieDetailsType = MovieDetailsType.allCases[indexPath.row]
            
            switch movieDetailsType{
            case .title :
                cell.recieveMovieDetails(type: .movieTitle, text: movie?.title ?? "")
            case .imdbID :
                cell.recieveMovieDetails(type: .movieImdbID, text: movie?.imdbID ?? "")
            case .type:
                cell.recieveMovieDetails(type: .movieType, text: (movie?.type.map { $0.rawValue })!)
            case .year:
                cell.recieveMovieDetails(type: .movieYear, text: movie?.year ?? "")
            }
            cell.selectionStyle = .none
            return cell
            
        }
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = MovieDetailsSection.allCases[indexPath.section]
        switch section {
        case .moviePoster:
            return 350
        default:
            return 50
        }
    }
}
