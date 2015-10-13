//
//  MainTabBarViewController.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
    }
    
    func setupViewController() {
        
        let curentListNVC = CurrentListNavigationViewController()
        curentListNVC.title = "Current"
        
        let addToDoItemNVC = AddToDoItemNavigationViewController()
        addToDoItemNVC.title = "Add"
        
        let outOfDateListNVC = OutOfDateListNavigationViewController()
        outOfDateListNVC.title = "Out of Date"
        
        let analyticsNVC = AnalyticsNavigationViewController()
        analyticsNVC.title = "Analytics"
        
        viewControllers = [curentListNVC, addToDoItemNVC, outOfDateListNVC, analyticsNVC]
    }
}
