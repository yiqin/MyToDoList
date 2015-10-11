//
//  ItemProtocol.swift
//  MyToDoList
//
//  Created by Yi Qin on 10/10/15.
//  Copyright © 2015 Yi Qin. All rights reserved.
//

import Foundation
import UIKit

protocol ItemProtocol {
    
    var title: String {get set}
    var detail: String {get set}
    
    var icon: UIImage? {get set}
    
    var category: String {get set}
    
    // FIXME: - 'let' declarations cannot be computed properties
    // let createdDate: NSDate {get}
    var createdDate: NSDate {get}
    
    var updatedDate: NSDate {get set}
}