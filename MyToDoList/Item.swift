//
//  Item.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import Foundation
import UIKit

struct Item: ItemProtocol {
    
    var title: String
    var detail: String
    
    var icon: UIImage?
    
    var category: String
    
    var createdDate: NSDate
    
    var updatedDate: NSDate
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
        
        self.category = ""
        
        self.createdDate = NSDate()
        self.updatedDate = NSDate()
    }
    
    // TODO: - NSCoding
}