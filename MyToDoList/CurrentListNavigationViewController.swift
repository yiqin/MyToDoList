//
//  CurrentListNavigationViewController.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class CurrentListNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [CurrentListViewController()]
        view.backgroundColor = UIColor.whiteColor()
    }
    
}
