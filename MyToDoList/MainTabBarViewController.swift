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

        // Do any additional setup after loading the view.
        
        setupViewController()
    }
    
    func setupViewController() {
        
        let curentListNVC = CurrentListNavigationViewController()
        curentListNVC.title = "Current"
        
        let addToDoItemNVC = AddToDoItemNavigationViewController()
        addToDoItemNVC.title = "Add"
        
        let outOfDateListNVC = OutOfDateListNavigationViewController()
        outOfDateListNVC.title = "Out of Date"
        
        let analysisNVC = AnalysisNavigationViewController()
        analysisNVC.title = "Analysis"
        
        viewControllers = [curentListNVC, addToDoItemNVC, outOfDateListNVC, analysisNVC]
    }
}
