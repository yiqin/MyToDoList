//
//  AnalysisNavigationViewController.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import UIKit

class AnalyticsNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [AnalyticsViewController()]
        view.backgroundColor = UIColor.whiteColor()
    }

}
