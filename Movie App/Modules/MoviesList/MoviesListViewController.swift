//
//  MoviesListViewController.swift
//  Movie App
//
//  Created by Sherif on 8/7/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController {
  
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension MoviesListViewController : UITableViewDelegate , UITableViewDataSource{
 
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        
        return UITableViewCell()
    }
    
}
