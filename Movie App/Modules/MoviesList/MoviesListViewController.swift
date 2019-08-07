//
//  MoviesListViewController.swift
//  Movie App
//
//  Created by Sherif on 8/7/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit
import Alamofire
class MoviesListViewController: UIViewController {
    
    @IBOutlet weak var tableView : UITableView!
    var tableMovies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Movies List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        loadData()
        // Do any additional setup after loading the view.
    }
    
    
    func loadData(){
        let params : [String : String] = [
            "s"      : "titanic",
            "apikey" : "b52fc4a5"
        ]
        Alamofire.request("http://www.omdbapi.com", method: .get, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON { (myResponseData) in
            do{
                let searchResults = try JSONDecoder().decode(SearchResults.self, from: myResponseData.data!)
                if let movies = searchResults.search{
                    self.tableMovies = movies
                    self.tableView.reloadData()
                    
                }
                
            }
            catch {
                fatalError("there is an error\(error)")
            }
        }
    }
    
}

extension MoviesListViewController : UITableViewDelegate , UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = tableMovies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = movie.title
     // cell.textLabel?.textAlignment = .center
        cell.textLabel?.font = UIFont(name: "verdana", size: 19)
        cell.selectionStyle = .none
        return cell
    }
        
}
