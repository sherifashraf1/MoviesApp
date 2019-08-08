//
//  GenericsTableViewNibs.swift
//  InstagramSH
//
//  Created by Sherif on 7/9/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit
extension UITableView {
    func registerNib<Cell : UITableViewCell> (cell : Cell.Type) {
        let nibName = String(describing: Cell.self)
        self.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
    }
}

extension UITableView{
    func dequeue<Cell : UITableViewCell>()-> Cell {
        let identifier = String(describing: Cell.self)
        guard let cell = self.dequeueReusableCell(withIdentifier: identifier) as? Cell else {
            fatalError("There is an error")
        }
        return cell
    }
}
